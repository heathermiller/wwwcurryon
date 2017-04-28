#!/usr/bin/env Rscript

library(tidyverse)
library(magick)
library(jpeg)
library(whisker)
library(stringr)

# input spreadsheet downloaded from google sheets
SHEET <- "~/Temp/curryon17.csv"

# where the images should go
img_dir <- "resources/img/2017/people"
sessions_dir <- "2017/sessions"
css_file <- "resources/css/2017/people.css"
speakers_file <- "speakers.yml"

template_css <-
'.circular.{{id}} {
  background-image: url(\'{{ site.baseurl }}/resources/img/2017/people/{{small_photo}}\');
}

@media all and (-webkit-min-device-pixel-ratio: 1.5) {
  .circular.{{id}} {
    background-image: url(\'{{ site.baseurl }}/resources/img/2017/people{{big_photo}}\');
    background-size: 125px 125px;
  }
}
'

template_speaker <-
'  - speaker-name: "{{name}}"
    title: "{{title}}"
    speaker-affiliation: "{{affiliation}}"
    url: "sessions/{{session_id}}.html"
'

template_session <-
'---
layout: 2017-abstract
title: "{{title}}"
by: {{name}}
affiliation: {{affiliation}}
profpic-class: {{id}}
---

[@{{twitter}}](https://twitter.com/{{twitter}})

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

    img <- load_image(row$photo_url)
    if (is.null(img)) {
        message("- no image associated")
        return()
    }

    tryCatch({
        info <- image_info(img)

        if (info$width < 250 || info$height < 250) {
            message("- image is too small ", info$width, "x", info$height)
        } else {
            img1x <- image_scale(img, "125x125")
            image_write(img1x, img1x_fname, format="png")
            message("- written ", img1x_fname)

            img2x <- image_scale(img, "250x250")
            image_write(img2x, img2x_fname, format="png")
            message("- written ", img2x_fname)

            message("- images done")
        }
    }, error=function(e) {
        message("- image failed: ", e$message)
    })
}

data <- read_csv(SHEET, trim_ws=T, na="")
data <-
    data %>%
    filter(Accepted=="y") %>%
    transmute(
        name=`First & Last Name`,
        affiliation=ifelse(is.na(Affiliation), "", Affiliation),
        twitter=`Twitter username`,
        title=`Talk Title`,
        abstract=`Talk Abstract`,
        bio=`Short Bio`,
        photo_url=`URL to a photo we can use as a profile picture`
    ) %>%
    mutate(
        # this is used for the speaker photo
        id=str_to_lower(name) %>% str_replace_all("\\s+", "_"),
        # this will be used to generate the filename so remove all rubbish
        session_id=str_to_lower(title) %>% str_replace_all("\\s+|[:?,_+'’&—().!]", "-") %>% str_replace_all("[-]+", "-"),
        name=name,
        title=title,
        twitter=str_replace(twitter, "^[@]?(.*)$", "\\1"),
        small_photo=str_c(id, ".png"),
        big_photo=str_c(id, "@2x.png")
    )

if (!dir.exists(img_dir)) {
    stopifnot(dir.create(img_dir))
}

if (!dir.exists(sessions_dir)) {
    stopifnot(dir.create(sessions_dir))
}

apply(data, 1, function(x) {
    row <- as.list(x)

    message("processing ", row$id)

    process_image(row)

    fname <- file.path(sessions_dir, str_c(row$session_id, ".md"))
    write(whisker.render(template_session, row), fname)
    message("- written ", fname)
})

css <- apply(data, 1, function(x) whisker.render(template_css, as.list(x)))
write(css, css_file)
message("Written ", css_file)

speakers <- apply(data, 1, function(x) whisker.render(template_speaker, as.list(x)))
write(speakers, speakers_file, append=TRUE)
message("Written ", speakers_file)
