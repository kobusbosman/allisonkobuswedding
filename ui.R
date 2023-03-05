ui <- navbarPage(
  title = "wedding",
  tabPanel(
    title = "Home",
    "home"
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
