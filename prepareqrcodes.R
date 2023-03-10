if (interactive()) {
  temp_dir <- tempdir()

  googledrive::drive_download("paymentlinks", path = glue::glue(temp_dir, "/paymentlinks.csv"), overwrite = TRUE) # if you want to let your guests writte their name
  paymentlinks <- read_csv(glue::glue(temp_dir, "/paymentlinks.csv"), 
                           locale = locale(decimal_mark = ","),
                           col_types = cols(.default = col_character()))
  
  apply(paymentlinks, 1, function(x) {
    file.create(paste0("www/", URLencode(paste0(x[["link"]], ".txt"), reserved = TRUE)))
  })
  
  apply(paymentlinks, 1, function(x) {
    png(paste0("www/", x[["tool"]], ".png"))
    plot(qrcode::qr_code(x[["link"]]))
    dev.off()
  })
}
