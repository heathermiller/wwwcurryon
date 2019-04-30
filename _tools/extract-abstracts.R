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
'.circular.{{id}} {
  background-image: url(\'{{ site.baseurl }}/resources/img/2019/people/{{small_photo}}\');
}

@media all and (-webkit-min-device-pixel-ratio: 1.5) {
  .circular.{{id}} {
    background-image: url(\'{{ site.baseurl }}/resources/img/2019/people/{{big_photo}}\');
    background-size: 125px 125px;
  }
}
'

template_talk_yml <-
'  - type: "{{type}}"{{#has_title?}}
    title: "{{title}}"
    url: "sessions/{{session_id}}.html"{{/has_title?}}
    video: "{{video_url}}"
    speaker:
      id: "{{id}}"
      name: "{{name}}"
      affiliation: "{{affiliation}}"
      url: "{{website}}"
      known-for: "{{known_for}}"
'

template_session <-
'---
layout: 2019-abstract
title: "{{title}}"
by: {{name}}
affiliation: {{affiliation}}
video: {{video_url}}
profpic-class: {{id}}
---

{{#has_twitter}}
[@{{twitter}}](https://twitter.com/{{twitter}})
{{/has_twitter}}

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

process_md <- function(row) {
    fname <- file.path(sessions_dir, str_c(row$session_id, ".md"))
    session <- whisker.render(template_session, row)

    # it is not possible to turn off escaping in whisker!
    session <- str_replace_all(session, "&quot;", '"')

    write(session, fname)
    message("- written ", fname)
}

make_id <- function(name) {
    name %>%
        trimws(which="both") %>%
        iconv(to="ASCII//TRANSLIT") %>%
        str_replace_all("\\s+", "_") %>%
        str_replace_all("&", "and") %>%
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

data <- read_csv(SHEET, trim_ws=T, na="")

data_sorted <-
    data %>%
    mutate(
        type=factor(
            type,
            levels=c("keynote", "invited", "talk", "chesstalk")
        )
    ) %>%
    arrange(type)

data_filtered <-
    data_sorted %>%
    filter(accepted == "Yes")

data_all <-
    data_filtered %>%
    mutate(
        id=map_chr(name, make_id),
        affiliation=ifelse(is.na(affiliation), "", affiliation),
        has_title=nchar(title) > 0,
        session_id=map_chr(title, make_session_id),
        twitter=str_replace(twitter, "^[@]?(.*)$", "\\1"),
        twitter=ifelse(is.na(twitter), "", twitter),
        has_twitter=nchar(twitter) > 0,
        website=ifelse(is.na(website), "", website),
        video_url=ifelse(is.na(video_url), "", video_url),
        known_for=ifelse(is.na(known_for), "", known_for),
        small_photo=str_c(id, ".png"),
        big_photo=str_c(id, "@2x.png")
    )

data_list <- split(data_all, seq(nrow(data_all)))

if (!dir.exists(img_dir)) {
    stopifnot(dir.create(img_dir))
}

if (!dir.exists(sessions_dir)) {
    stopifnot(dir.create(sessions_dir))
}

for (item in data_list) {
    message("processing ", item$id)
    process_image(item)
    if (!is.na(item$title)) {
        process_md(item)
    }
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

talks <- map_chr(data_list, ~ whisker.render(template_talk_yml, .))
update_talks(talks)

css <-
    data_list %>%
    map_chr(~ whisker.render(template_css, .)) %>%
    str_replace_all("&amp;", "and")
update_css(css)
