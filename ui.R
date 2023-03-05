ui <- fluidPage(
    column(
      12,
      align = "center",
      img(src="trees.png", align = "center")
    ),
    includeCSS("www/mycss.css"),
    div(
      class = "navbar1",
      navbarPage(
        title = "",
        theme = bs_theme(
          bootswatch = "lux"
        ),
        tabPanel(
          shinyjs::useShinyjs(),
          title = "Home",
          fluidPage(
            fluidRow(
              column(3),
              column(
                2,
                align = "right",
                h1("Kobus Bosman")
              ),
              column(
                2,
                align = "center",
                h3("&")
              ),
              column(
                2,
                align = "left",
                h1("Allison Crawford")
              ),
              column(3)
            ),
            fluidRow(
              column(
                12,
                align = "center",
                img(src="trees.png")
              )
            )
          ),
        ),
        tabPanel(
          title = "Schedule",
          "schedule"
        ),
        tabPanel(
          title = "RSVP",
          tagList(
            uiOutput("nameselection"),
            uiOutput("rsvp"),
            uiOutput("remarks"),
            actionButton(inputId = "submit", label = "Send to Allison & Kobus")
          )
        ),
        tabPanel(
          title = "Travel",
          "travel"
        ),
        tabPanel(
          title = "Registry",
          "registry"
        ),
        tabPanel(
          title = "Wedding Party",
          "wedding party"
        ),
        tabPanel(
          title = "Gallery",
          "gallery"
        ),
        tabPanel(
          title = "Things to do",
          "things to do"
        ),
        tabPanel(
          title = "FAQs",
          "faqs"
        )
      )
    )
)
