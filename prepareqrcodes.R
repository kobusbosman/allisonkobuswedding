if (interactive()) {
  paymentlinks <- readr::read_csv(
    "www/paymentlinks.csv",
    locale = readr::locale(decimal_mark = ","),
    col_types = readr::cols(.default = readr::col_character())
  )
  apply(paymentlinks, 1, function(x) {
    png(paste0("www/", x[["tool"]], ".png"))
    plot(qrcode::qr_code(x[["link"]]))
    dev.off()
  })
}
