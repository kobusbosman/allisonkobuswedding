# Load packages
library(shiny)
library(shinysurveys)
library(googledrive)
library(googlesheets4)
library(readr)
library(dplyr)
library(bslib)

drive_deauth()
drive_auth(token = readRDS(".secrets/928dfaa8a7345b1e2252d3bb85b912c6_allisonkobusbosman@gmail.com"))
gs4_deauth()
gs4_auth(token = readRDS(".secrets/928dfaa8a7345b1e2252d3bb85b912c6_allisonkobusbosman@gmail.com"))

options(
  # whenever there is one account token found, use the cached token
  gargle_oauth_email = TRUE#,
  # specify auth tokens should be stored in a hidden directory ".secrets"
  # gargle_oauth_cache = "allisonkobuswedding/.secrets"

)

# Get the ID of the sheet for writing programmatically
# This should be placed at the top of your shiny app
sheet_id <- drive_get("allisonkobusguests")$id
