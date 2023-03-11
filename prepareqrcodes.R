if (interactive()) {
  paymentlinks <- read_csv(
    "www/paymentlinks.csv",
    locale = locale(decimal_mark = ","),
    col_types = cols(.default = col_character())
  )
  apply(paymentlinks, 1, function(x) {
    png(paste0("www/", x[["tool"]], ".png"))
    plot(qrcode::qr_code(x[["link"]]))
    dev.off()
  })
}
