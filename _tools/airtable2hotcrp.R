#!/usr/bin/env Rscript

options(error=function() { traceback(2); if (!interactive()) quit("no", status=1, runLast=FALSE) })

library(tidyverse)
library(jsonlite)

args = commandArgs(trailingOnly=TRUE)
if (length(args) != 1) {
  stop("Usage: <airtable.csv>")
}

input <- args[1]

data <- read_csv(input)

talks <- filter(data, `Status?`=="Accepted")

talks_w_data <- filter(talks, nchar(Title) > 0)

talks_ready <- transmute(
    talks_w_data,
    type=`Type of Talk`[[1]],
    title=Title,
    firstname=sapply(str_split(Name, " "), function(x) x[-length(x)]),
    lastname=sapply(str_split(Name, " "), function(x) x[length(x)]),
    affiliation=Affiliation,
    abstract=Abstract
)

convert <- function(x) {
    converted <- list()
    converted$title <- x$title[[1]]
    converted$id <- paste(str_replace_all(x$firstname, " ", "_"), x$lastname, sep="_", collapse="_")
    converted$authors <- lapply(1:nrow(x), function(y) {
        list(
            first=x$firstname[[y]],
            last=x$lastname[[y]],
            affiliation=x$affiliation[[y]]
        )
    })
    converted$abstract <- x$abstract[[1]]
    converted
}

talks_json <- group_by(talks_ready, title) %>% do(json=toJSON(convert(.), pretty=TRUE, auto_unbox=TRUE))

cat("[", paste(unlist(talks_json$json), collapse=",\n"), "]", file="test.json")
