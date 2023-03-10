# Load packages
library(shiny)
library(shinysurveys)
library(googledrive)
library(googlesheets4)
library(readr)
library(dplyr)
library(bslib)
library(qrcode)

drive_deauth()
drive_auth(token = readRDS(".secrets/928dfaa8a7345b1e2252d3bb85b912c6_allisonkobusbosman@gmail.com"))
gs4_deauth()
gs4_auth(token = readRDS(".secrets/928dfaa8a7345b1e2252d3bb85b912c6_allisonkobusbosman@gmail.com"))

options(
  gargle_oauth_email = TRUE
)

qrcode_plotter <- function(toolName) {
  locallink_txt <- list.files("www/", paste0(".+", tolower(toolName), ".+.txt$"))
  locallink <- gsub(".{4}$", "", URLdecode(locallink_txt))
  return(
    tags$a(
      img(
        src = paste0(toolName, ".png"),
        align = "center",
        width = "150px"
      ),
      href = locallink,
      target="_blank"
    )
  )
}
