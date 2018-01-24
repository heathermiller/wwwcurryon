#!/usr/bin/env Rscript

args <- commandArgs(trailingOnly=T)
image_path <- args[1]
css_file <- args[2]

stopifnot(dir.exists(image_path))
stopifnot(dir.exists(dirname(css_file)))

images <- list.files(image_path, pattern="\\.png$", recursive=FALSE, full.names=TRUE)
people <- tools::file_path_sans_ext(basename(images[!grepl("@2x", images)]))
people_2x <- tools::file_path_sans_ext(basename(images[grepl("@2x", images)]))

missing <- people[!(people %in% people)]
missing_2x <- people_2x[!(people_2x %in% people)]

if (length(missing)) {
    message("Missing 125x125 for:\n", paste(" -", missing, collapse="\n"))
}

if (length(missing_2x)) {
    message("Missing 250x250 for:\n", paste(" -", missing, collapse="\n"))
}

stopifnot(length(missing) == 0 && length(missing_2x) == 0)

gen_css <- function(id) {
    stringr::str_interp(
".circular.${id} {
  background-image: url('/${image_path}/${id}.png');
}

@media all and (-webkit-min-device-pixel-ratio: 1.5) {
  .circular.${id} {
    background-image: url('/${image_path}/${id}@2x.png');
    background-size: 125px 125px;
  }
}")
}

css <- sapply(people, gen_css)
css <- paste(css, collapse="\n\n\n")
writeLines(css, css_file)
