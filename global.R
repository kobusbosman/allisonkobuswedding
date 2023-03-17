library(shiny)
library(shinysurveys)
library(googledrive)
library(googlesheets4)
library(readr)
library(dplyr)
library(bslib)
library(qrcode)
library(leaflet)
library(geosphere)

source("functions.R")

drive_deauth()
drive_auth(token = readRDS(".secrets/928dfaa8a7345b1e2252d3bb85b912c6_allisonkobusbosman@gmail.com"))
gs4_deauth()
gs4_auth(token = readRDS(".secrets/928dfaa8a7345b1e2252d3bb85b912c6_allisonkobusbosman@gmail.com"))

options(
  gargle_oauth_email = TRUE
)

paymentlinks <- read_csv(
  "www/paymentlinks.csv", 
  locale = locale(decimal_mark = ","),
  col_types = cols(.default = col_character())
)

imagepaths_read <- readLines("www/imagepaths.txt")

excluded_images <- c(
  "20200814_144606_imageboard.jpg_converted.jpg_converted.jpg",
  "20200815_164714_imageboard.jpg_converted.jpg_converted.jpg",
  "df982328-41ed-4a17-9479-2a0d03efed7a_imageboard.JPG_converted.jpg",
  "f25e7458-c004-46ee-ad23-64d27c38c956_imageboard.JPG_converted.jpg",
  "IMG-1642_imageboard.jpg_converted.jpg",
  "IMG-4568_imageboard.jpg_converted.jpg",
  "20201102_140259_imageboard.jpg_converted.jpg",
  "IMG-3365_imageboard.jpg_converted.jpg",
  "20200814_144606_imageboard.jpg_converted.jpg",
  "20200815_164714_imageboard.jpg_converted.jpg",
  "IMG-20210812-WA0002_imageboard.jpg_converted.jpg",
  "FB_IMG_1660937795772_imageboard.jpg_converted.jpg",
  "20201030_155544_imageboard.jpg_converted.jpg",
  "1c38e0d8-c6d4-4206-b74c-4d8ff0ab3612_imageboard.JPG_converted.jpg",
  "IMG-20210513-WA0012_imageboard.jpg_converted.jpg",
  "IMG-1928_imageboard.jpg_converted.jpg",
  "20230101_020456_imageboard.jpg_converted.jpg",
  "IMG-0519_imageboard.jpg_converted.jpg",
  "76aadb3b-5959-453a-9b0b-33973592c3d1_imageboard.JPG_converted.jpg"
)

# randomize_imageboard(excluded_images)
