#!/usr/bin/env Rscript

library(tidyverse)
library(magick)
library(jpeg)
library(whisker)
library(stringr)

options(timeout=30)

# input spreadsheet downloaded from google sheets
SHEET <- "curryon19.csv"

# where the images should go
img_dir <- "resources/img/2019/people"
sessions_dir <- "2019/sessions"
css_file <- "resources/css/2019/people.css"
data_yml_file <- "_data/2019.yml"

template_css <-
'.circular.{{speaker_id}} {
  background-image: url(\'{{ site.baseurl }}/resources/img/2019/people/{{small_photo}}\');
}

@media all and (-webkit-min-device-pixel-ratio: 1.5) {
  .circular.{{speaker_id}} {
    background-image: url(\'{{ site.baseurl }}/resources/img/2019/people/{{big_photo}}\');
    background-size: 125px 125px;
  }
}'

template_talk_yml <-
'- type: "{{type}}"
  chesstalk: {{chesstalk}}{{#has_title}}
  title: "{{title}}"
  url: "sessions/{{session_id}}.html"{{/has_title}}
  video: "{{video_url}}"
  speakers:
'

template_speaker_yml <-
'  - id: "{{speaker_id}}"
    name: "{{name}}"
    affiliation: "{{affiliation}}"
    url: "{{website}}"
    twitter: "{{twitter}}"
    known-for: "{{known_for}}"
    list: "{{list}}"'

template_session <-
'---
layout: 2019-abstract
title: "{{title}}"
speakers:
{{speakers}}
---

<br/>

### Abstract

{{abstract}}

### Bio

{{bio}}
'

load_image <- function(url) {
    ext <- tools::file_ext(url) %>% str_to_lower()
    temp <- tempfile(fileext=ext)

    tryCatch({
        message("- downloading ", url)
        download.file(url, temp, method="wget", quiet=TRUE)
        on.exit(unlink(temp))

        tryCatch({
            if (ext %in% c("jpg", "jpeg", "png", "tiff")) {
                image_read(temp)
            } else {
                # fallback to JPEG
                image_read(readJPEG(temp))
            }
        }, error=function(e) {
            message("- unable to read image: ", url)
            NULL
        })
    }, error=function(e) {
        message("- unable to download photo from: ", url)
        NULL
    })
}

process_image <- function(row) {
    img1x_fname <- file.path(img_dir, row$small_photo)
    img2x_fname <- file.path(img_dir, row$big_photo)

    if (file.exists(img1x_fname) && file.exists(img2x_fname)) {
        message("- image done")
        return()
    }

    if (is.na(row$photo_url)) {
        message("- ERROR: missing photo")
        return()
    }

    img <- load_image(row$photo_url)
    if (is.null(img)) {
        message("- ERROR: no image associated")
        return()
    }

    tryCatch({
        info <- image_info(img)

        if (info$width < 250 || info$height < 250) {
            message("- ERROR: image is too small ", info$width, "x", info$height)
        } else {
            img1x <- image_scale(img, "125")
            image_write(img1x, img1x_fname, format="png")
            message("- written ", img1x_fname)

            img2x <- image_scale(img, "250")
            image_write(img2x, img2x_fname, format="png")
            message("- written ", img2x_fname)

            message("- images done")
        }
    }, error=function(e) {
        message("- ERROR: image failed: ", e$message)
    })
}

render_whisker <- function(...) {
    # it is not possible to turn off escaping in whisker!
    whisker.render(...) %>%
    str_replace_all(fixed("&quot;"), '"') %>%
    str_replace_all(fixed("&amp;"), "&")
}

process_md <- function(talk) {
    speakers <- render_speakers(talk)
    bio <- map_chr(talk, function(x) if (is.na(x$bio)) "" else x$bio)
    bio <- str_c(bio[nchar(bio) > 0], collapse="\n\n\n")
    talk <- talk[[1]]
    title <- talk$title
    abstract <- talk$abstract
    
    session <- render_whisker(
      template_session, 
      list(
        title=title,
        abstract=abstract,
        bio=bio,
        speakers=speakers
      )
    )
    
    fname <- file.path(sessions_dir, str_c(talk$session_id, ".md"))
    write(session, fname)
    message("- written ", fname)
}

make_speaker_id <- function(name) {
    name %>%
        trimws(which="both") %>%
        iconv(to="ASCII//TRANSLIT") %>%
        str_replace_all("\\s+", "_") %>%
        str_to_lower()
}

make_session_id <- function(title) {
    title %>%
        trimws(which="both") %>%
        str_replace_all("[:?,_+'’&—().!]", "") %>%
        str_replace_all("\\s+", "-") %>%
        str_replace_all("[-]+", "-") %>%
        str_to_lower()
}

render_speakers <- function(talk) {
  speakers <- map_chr(talk, ~ render_whisker(template_speaker_yml, .))
  str_c(speakers, collapse = "\n")
}
 
render_talk <- function(talk) {
  speakers <- render_speakers(talk)
  # for the talk itself we use data in the first row
  talk <- talk[[1]]
  yml <- render_whisker(template_talk_yml, talk)
  str_c(yml, speakers, collapse = "\n")
}

render_css <- function(talk) {
  css <- map_chr(talk, ~ render_whisker(template_css, .))
  str_c(css, collapse = "\n\n")
}

update_talks <- function(talks) {
  data_yml <- readLines(data_yml_file)
  
  start <- which(!is.na(str_match(data_yml, "# BEGIN_TALKS")))
  stopifnot(start > 1)
  
  end <- which(!is.na(str_match(data_yml, "# END_TALKS")))
  stopifnot(end > 1)
  
  new_data_yml <- c(
    data_yml[1:start],
    talks,
    data_yml[end:length(data_yml)]
  )
  
  writeLines(new_data_yml, data_yml_file)
  message("Updated ", data_yml_file)
}

update_css <- function(css) {
  write(css, css_file)
}

data <- read_csv(SHEET, trim_ws=T, na="", col_types = cols(
  type = col_character(),
  chesstalk = col_character(),
  name = col_character(),
  accepted = col_character(),
  email = col_character(),
  affiliation = col_character(),
  known_for = col_character(),
  twitter = col_character(),
  website = col_character(),
  talk_id = col_integer(),
  title = col_character(),
  general_topic = col_character(),
  fact = col_character(),
  video_url = col_logical(),
  abstract = col_character(),
  bio = col_character(),
  photo_url = col_character(),
  recording = col_character(),
  list = col_character()
))

data_sorted <-
    data %>%
    mutate(
        type=factor(
            type,
            levels=c("keynote", "invited", "talk")
        ),
        chesstalk=tolower(chesstalk) == "yes"
    ) %>%
    arrange(type)

data_filtered <-
    data_sorted %>%
    filter(accepted == "Yes")

data_all <-
    data_filtered %>%
    mutate_if(is.character, trimws, "both") %>%
    mutate(
        speaker_id=map_chr(name, make_speaker_id),
        affiliation=ifelse(is.na(affiliation), "", affiliation),
        title=ifelse(is.na(title), "", title),
        has_title=str_length(title) > 0,
        session_id=map_chr(title, make_session_id),
        twitter=str_replace(twitter, "^[@]?(.*)$", "\\1"),
        twitter=ifelse(is.na(twitter), "", twitter),
        has_twitter=nchar(twitter) > 0,
        website=ifelse(is.na(website), "", website),
        video_url=ifelse(is.na(video_url), "", video_url),
        known_for=ifelse(is.na(known_for), "", known_for),
        small_photo=str_c(speaker_id, ".png"),
        big_photo=str_c(speaker_id, "@2x.png"),
        list=ifelse(is.na(list), "yes", list)
    )

data_list <- split(data_all, data_all$talk_id)
# convert each row from a data frame into a list
data_list <- lapply(data_list, function(x) split(x, seq(nrow(x))))

if (!dir.exists(img_dir)) {
    stopifnot(dir.create(img_dir))
}

if (!dir.exists(sessions_dir)) {
    stopifnot(dir.create(sessions_dir))
}

for (item in data_list) {
  message("processing talk_id: ", item$talk_id)
  
  for (speaker in item) {
    message("processing speaker_id: ", speaker$speaker_id)
    process_image(speaker)
  }
  
  if (nchar(item[[1]]$title) > 0) {
    process_md(item)
  }
}

talks <- map_chr(data_list, ~ render_talk(.))
update_talks(talks)

css <- map_chr(data_list, ~ render_css(.))
update_css(css)
