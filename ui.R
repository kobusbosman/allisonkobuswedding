ui <- fluidPage(
  column(
    12,
    align = "center",
    img(src="trees.png", align = "center", width = "50%")
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
              fluidRow(
                column(
                  12,
                  align = "center",
                  h3("")
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  h3("&")
                )
              )
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
              h3("October 20, 2023", style = "margin-top: 25px"),
              h6("Bluemont, VA", style = "margin-top: 25px"),
            )
          ),
          fluidRow(),
          fluidRow(
            h3("How we met", style = "margin-top: 75px"),
            h6("February 2, 2020", style = "margin-top: 25px"),
            fluidRow(
              column(
                3
              ),
              column(
                6,
                align = "center",
                fluidRow(
                  column(
                    12,
                    align = "center",
                    p("Kobus and Allison matched on Hinge in December, 2019. After several weeks of hilarious banter, Allison traveled to Utrecht on a Sunday for their first date at Lebowski's pub, where they talked for over six hours. They spent the next two and a half years making the two-hour journey between Utrecht and Groningen almost every weekend until Allison moved in with Kobus in summer 2022. They enjoy eating plants, dancing zouk, and living the city life.", style = "margin-top: 25px; text-align: justify;")
                  )
                )
              ),
              column(
                3
              )
            )
          ),
          fluidRow(),
          fluidRow(
            h3("Our proposal", style = "margin-top: 75px"),
            h6("December 24, 2022", style = "margin-top: 25px"),
            fluidRow(
              column(
                3
              ),
              column(
                6,
                align = "center",
                fluidRow(
                  column(
                    12,
                    align = "center",
                    p("A lonely Allison boarded a plane by herself to visit her family in the US for Christmas. Little did she know, Kobus was making secret plans with her parents to join her a week later. He showed up at her sister Lauren's house on December 23rd and became the best Christmas miracle ever...or so she thought. The next day Kobus insisted on heading out in 15-degree weather (-10C) to hike up Sugarloaf Mountain. When they reached the top Kobus put on some music and asked Allison to dance. Once Taylor Swift said, \"I\'ve loved you three summers now, honey, but I want \'em all,\" Kobus knelt down and asked if Allison would marry him. When she gained her composure, Allison immediately said yes!", style = "margin-top: 25px; text-align: justify;")
                  )
                )
              ),
              column(
                3
              )
            )
          )
        )
      ),
      tabPanel(
        title = "Schedule",
        fluidPage(
          fluidRow(
            column(3),
            column(
              6,
              align = "center",
              fluidRow(
                column(
                  12,
                  align = "center",
                  p("Here's what to expect during our wedding weekend. We hope to see you as much as possible!")
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  h1("Thursday, October 19, 2023", style = "margin-top: 75px"),
                  h3("Hiking", style = "margin-top: 25px"),
                  p("2.00 PM"),
                  p("Join us in the scenic Blue Ridge mountains for a pre-wedding hike.", style = "margin-top: 25px")
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  h1("Friday, October 20, 2023", style = "margin-top: 75px"),
                  h3("Wedding", style = "margin-top: 25px"),
                  p("3.00 PM - 11.00 PM"),
                  p("Raven Rocks Farmhouse", style = "margin-top: 25px"),
                  p("17345 Raven Rocks Rd, Bluemont, VA 20135"),
                  p("Cocktail Attire: Wear cocktail dresses, dressy jumpsuits, and jackets and slacks. Mooi!", style = "margin-top: 25px"),
                  p("The ceremony and reception will take place in one location. Handig!"),
                  p("There will be lawn games and snacks followed by food truck service and lots of dancing under the tent. Local beer and other beverages will be provided. Gezellig!")
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  h1("Saturday, October 21, 2023", style = "margin-top: 75px"),
                  h3("Beer Festival", style = "margin-top: 25px"),
                  p("11.00 AM - 4.00 PM"),
                  p("Bear Chase Brewing Company", style = "margin-top: 25px"),
                  p("33665 Bear Chase Ln, Bluemont, VA 20135"),
                  p("Keep the party going on Saturday at the 3rd annual Beer and Wine Festival at Bear Chase Brewing Company. Enjoy award-winning beer, wine, live music and food. Proost!", style = "margin-top: 25px"),
                )
              )
            ),
            column(3)
          )
        )
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