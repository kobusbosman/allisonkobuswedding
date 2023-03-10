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

qrcode_plotter <- function(toolName) {
  return(
    tags$a(
      img(
        src = paste0(toolName, ".png"),
        align = "center",
        width = "150px"
      ),
      href = paymentlinks[[which(paymentlinks$tool == toolName),"link"]],
      target="_blank"
    )
  )
}

get_map_wedding <- function(data_markers, icon_markers, zoom = 7) {

  if (nrow(data_markers) > 1) {
    centroid_map <- as.vector(centroid(data_markers %>% select(longitude, latitude) %>% as.data.frame()))
  } else {
    centroid_map = c(data_markers$longitude, data_markers$latitude)
  }

  setview <- c("longitude" = centroid_map[1],
               "latitude" = centroid_map[2],
               "zoom" = zoom)

  data_markers %>%
    leaflet() %>%
    addProviderTiles("CartoDB.Positron") %>%
    setView(
      lng = as.numeric(setview["longitude"]),
      lat = as.numeric(setview["latitude"]),
      zoom = as.numeric(setview["zoom"])
    ) %>%
    addAwesomeMarkers(
      lng = ~ longitude,
      lat = ~ latitude,
      popup = ~ name,
      icon = awesomeIcons(
        icon = icon_markers,
        iconColor = "white",
        library = "ion",
        markerColor = "black"
      )
    )
}

last_image <- "PHOTO-2022-11-27-16-23-49_imageboard.jpg"
imagepaths_read <- readLines("www/imagepaths.txt")

randomize_imageboard <- function(x) {
  imagepaths <- list.files(path = "www", pattern ="imageboard")
  imagepaths <- imagepaths[which(imagepaths != last_image)]
  imagepaths <- sample(imagepaths)
  writeLines(imagepaths, "www/imagepaths.txt")
}
# randomize_imageboard()
