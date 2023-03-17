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

randomize_imageboard <- function(excluded_images) {
  imagepaths <- list.files(path = "www", pattern ="_converted")
  imagepaths <- imagepaths[which(!imagepaths %in% excluded_images)]
  imagepaths <- sample(imagepaths)
  writeLines(imagepaths, "www/imagepaths.txt")
}
