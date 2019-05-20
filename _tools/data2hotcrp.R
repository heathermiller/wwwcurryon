#!/usr/bin/env Rscript

options(error=function() { traceback(2); if (!interactive()) quit("no", status=1, runLast=FALSE) })

library(yaml)
library(jsonlite)
library(stringr)

args = commandArgs(trailingOnly=TRUE)
if (length(args) != 1) {
  stop("Usage: <YAML>")
}

e <- new.env(parent=emptyenv())
e$counter <- 1

convert_speaker <- function(speaker) {
    names <- str_split(speaker$name, pattern=" ")[[1]]
    first <- str_c(names[1:length(names)-1], collapse=" ")
    last <- names[length(names)]
    list(
        first=first,
        last=last,
        email=speaker$email,
        affiliation=speaker$affiliation
    )
}

convert_one <- function(x) {
    converted <- list()

    converted$title <- x$title

    converted$pid <- e$counter
    e$counter <- e$counter + 1

    converted$authors <- lapply(x$speakers, convert_speaker)

    abstract <-
        if (!is.null(x$url) && nchar(x$url) > 0) {
            session_file <- str_c(tools::file_path_sans_ext(x$url), ".md")
            tryCatch(load_abstract(session_file), error=function(e) stop("Unable to convert: ", e$message, "\n", capture.output(str(x))))
        } else {
            ""
        }

    converted$abstract <- abstract
    converted
}

load_abstract <- function(f) {
    fn <- file.path("2019", f)
    stopifnot(file.exists(fn))

    lines <- readLines(fn)
    lines <- sapply(lines, trimws, USE.NAMES=FALSE)

    in_abstract <- FALSE
    abstract <- character()

    for (line in lines) {
        if (line == "### Abstract") {
            in_abstract <- TRUE
        } else if (line == "### Bio") {
            break()
        } else if (in_abstract) {
            if (nchar(line) == 0 && length(abstract) == 0) {
                next()
            } else {
                abstract <- c(abstract, line)
            }
        }
    }

    str_c(abstract, collapse="\n")
}

input <- args[1]

data <- yaml.load_file(input)
talks <- data$talks

talks <- Filter(function(x) x$type %in% c("invited", "keynote", "talk", "chesstalk"), talks)
converted <- lapply(talks, convert_one)

cat(jsonlite::toJSON(converted, pretty=TRUE, auto_unbox=TRUE))
