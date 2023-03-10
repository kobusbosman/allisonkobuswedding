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
              6,
              align = "center",
              fluidRow(
                column(
                  5,
                  shiny::HTML("<h1 class='centerMobileOnly' style = 'text-align:right'>Kobus<br/>Bosman</h1>")
                ),
                column(
                  2,
                  align = "center",
                  shiny::HTML("<h3 class = 'AndDesktop'><br/>&</h3>"),
                  shiny::HTML("<h3 class = 'AndMobile'>&</h3>")
                ),
                column(
                  5,
                  align = "left",
                  shiny::HTML("<h1 class='centerMobileOnly style = 'text-align:left'>Allison<br/>Crawford</h1>")
                ),
                column(2)
              )
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
              column(3),
              column(
                6,
                align = "center",
                fluidRow(
                  column(
                    6,
                    align = "center",
                    p("Kobus and Allison matched on Hinge in December, 2019. After several weeks of hilarious banter, Allison traveled to Utrecht on a Sunday for their first date at Lebowski's pub, where they talked for over six hours. They spent the next two and a half years making the two-hour journey between Utrecht and Groningen almost every weekend until Allison moved in with Kobus in summer 2022. They enjoy eating plants, dancing zouk, and living the city life.", style = "margin-top: 25px; text-align: justify;")
                  ),
                  column(
                    6,
                    align = "center",
                    img(src = "lebowskifadesquare.jpg", align = "right", width = "300px", style = "margin-top:25px;")
                  )
                )
              ),
              column(3)
            )
          ),
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
                    6,
                    img(src = "ringfadesquare.jpg", align = "left", width = "300px", style = "margin-top:25px;")
                  ),
                  column(
                    6,
                    p("A lonely Allison boarded a plane by herself to visit her family in the US for Christmas. Little did she know, Kobus was making secret plans with her parents to join her a week later. He showed up at her sister Lauren's house on December 23rd and became the best Christmas miracle ever... or so she thought. The next day Kobus insisted on heading out in 15-degree weather (-10C) to hike up Sugarloaf Mountain. When they reached the top Kobus put on some music and asked Allison to dance. Once Taylor Swift said, \"I\'ve loved you three summers now, honey, but I want \'em all,\" Kobus knelt down and asked if Allison would marry him. When she gained her composure, Allison immediately said yes!", style = "margin-top: 25px; text-align: justify;")
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
                  p("Bear Chase Brewing Company", style = "margin-top: 25px"),
                  p(a(href = "https://www.google.com/maps/place/bear+chase+brewing+company/@39.1106956,-77.8458916,15z/data=!4m2!3m1!1s0x0:0x42b23afb12ce78d2?sa=X&ved=2ahUKEwiDt4-Zr8_9AhW7hP0HHeF_ACEQ_BJ6BQiNARAD", "33665 Bear Chase Ln, Bluemont, VA 20135", .noWS = "outside", target="_blank"), .noWS = c("after-begin", "before-end")),
                  fluidRow(
                    column(2),
                    column(
                      8,
                      p("Join us in the scenic Blue Ridge mountains for a pre-wedding hike.")
                    ),
                    column(2)
                  )
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
                  p(a(href = "https://www.google.com/maps?q=17345+Raven+Rocks+Rd,+Bluemont,+VA+20135&rlz=1C1GCEA_enNL949NL949&um=1&ie=UTF-8&sa=X&ved=2ahUKEwj159Dzr8_9AhVIgP0HHZ47DfwQ_AUoAXoECAEQAw", "17345 Raven Rocks Rd, Bluemont, VA 20135", .noWS = "outside", target="_blank"), .noWS = c("after-begin", "before-end")),
                  fluidRow(
                    column(2),
                    column(
                      8,
                      p("Cocktail attire: wear cocktail dresses, dressy jumpsuits, suits and jackets and slacks. The ceremony and reception will take place in one location. There will be lawn games and snacks followed by food truck service and lots of dancing under the tent. Local beer and other beverages will be provided. Gezellig!", style = "margin-top: 25px; text-align: justify;"),
                    ),
                    column(2)
                  )
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
                  p(a(href = "https://www.google.com/maps/place/bear+chase+brewing+company/@39.1106956,-77.8458916,15z/data=!4m2!3m1!1s0x0:0x42b23afb12ce78d2?sa=X&ved=2ahUKEwiDt4-Zr8_9AhW7hP0HHeF_ACEQ_BJ6BQiNARAD", "33665 Bear Chase Ln, Bluemont, VA 20135", .noWS = "outside", target="_blank"), .noWS = c("after-begin", "before-end")),
                  fluidRow(
                    column(2),
                    column(
                      8,
                      align = "center",
                      p("Keep the party going on Saturday at the 3rd annual Beer and Wine Festival at Bear Chase Brewing Company. Enjoy award-winning beer, wine, live music and food. Proost!", style = "margin-top: 25px; text-align: justify;"),
                    ),
                    column(2)
                  )
                )
              )
            ),
            column(3)
          )
        )
      ),
      tabPanel(
        title = "RSVP",
        fluidPage(
          fluidRow(
            column(
              12,
              align = "center",
              fluidRow(
                column(
                  12,
                  align = "center",
                  p("Thanks for letting us know if you're joining! Please fill out this form for every individual:")
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  shinycssloaders::withSpinner(
                    uiOutput(
                      "nameselection",
                      style = "margin-top: 25px;"
                    ),
                    type = 8,
                    color = "#4c774f"
                  )
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  uiOutput("rsvp", style = "margin-top: 25px;")
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  uiOutput("song", style = "margin-top: 25px;")
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  uiOutput("remarks", style = "margin-top: 25px;")
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  actionButton(inputId = "submit", label = "Send to Allison & Kobus", style = "border-color: #4c774f; margin-top: 25px; text-align: justify; margin-bottom:5px")
                )
              )
            )
          )
        )
      ),
      tabPanel(
        title = "Travel and Accommodation",
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
                  icon("plane-arrival", "fa-3x", style = "margin-top: 25px"),
                  h1("Travel"),
                  h3("Washington Dulles International Airport (IAD)", style = "margin-top: 25px"),
                  fluidRow(
                    column(2),
                    column(
                      8,
                      p("KLM has direct flights between Amsterdam and Washington every day and the venue is less than an hour by car from the airport.", style = "margin-top: 25px; text-align: center;"),
                    ),
                    column(2)
                  )
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  icon("hotel", "fa-3x", style = "margin-top: 75px"),
                  h1("Accommodation", style = "margin-top: 25px"),
                  fluidRow(
                    column(2),
                    column(
                      8,
                      p("We will post accommodation options here soon!", style = "margin-top: 25px; text-align: center;")
                    ),
                    column(2)
                  )
                )
              )
            ),
            column(3)
          )
        )
      ),
      tabPanel(
        title = "Gifts",
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
                  fluidRow(
                    column(2),
                    column(
                      8,
                      p("Your presence is gift enough, but if you're feeling generous, contribute any amount to our newlywed fund. Scan or click on the QR-codes below:", style = "text-align: justify;")
                    ),
                    column(2)
                  )
                )
              ),
              shinycssloaders::withSpinner(
                uiOutput("allcodes"),
                type = 8,
                color = "#4c774f"
              )
            ),
            column(3)
          )
        )
      ),
      tabPanel(
        title = "Line-up",
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
