ui <- fluidPage(
  tags$head(tags$link(rel="shortcut icon", href="https://img.favpng.com/23/4/23/family-icon-png-favpng-eJfQfkJFe2q8i3drTX92J1VMQ.jpg")),
  HTML('<input type="text" id="client_time" name="client_time" style="display: none;"> '),
  HTML('<input type="text" id="client_time_zone_offset" name="client_time_zone_offset" style="display: none;"> '),
  tags$script('
    $(function() {
      var time_now = new Date()
      $("input#client_time").val(time_now.getTime())
      $("input#client_time_zone_offset").val(time_now.getTimezoneOffset())
    });    
  '),
  column(
    12,
    align = "center",
    img(src="trees.png", align = "center", width = "50%")
  ),
  includeCSS("www/mycss.css"),
  div(
    class = "navbar1",
    navbarPage(
      title = "Allison & Kobus wedding website",
      id = "navtabs",
      theme = bs_theme(
        bootswatch = "lux"
      ),
      tabPanel(
        shinyjs::useShinyjs(),
        title = "Home",
        fluidPage(
          fluidRow(
            column(
              5,
              shiny::HTML("<h1 class='centerMobileOnly' style = 'text-align:right'>Allison<br/>Marie<br/>Crawford</h1>")
            ),
            column(
              2,
              align = "center",
              shiny::HTML("<h3 class = 'AndDesktop'><br/><br/>&</h3>"),
              shiny::HTML("<h3 class = 'AndMobile'>&</h3>")
            ),
            column(
              5,
              align = "left",
              shiny::HTML("<h1 class='centerMobileOnly' style = 'text-align:left'>Kobus<br/>Johannes<br/>Bosman</h1>")
            )
          ),
          fluidRow(
            column(
              12,
              align = "center",
              h3("October 20, 2023", style = "margin-top: 25px"),
              h6("Bluemont, Virginia, USA", style = "margin-top: 25px"),
            )
          ),
          fluidRow(
            column(5),
            column(
              2,
              align = "center",
              img(src = "memorialflight3.jpg", align = "center", width = "100%", style = "margin-top:50px;")
            ),
            column(5)
          ),
          fluidRow(
            h3("How we met", style = "margin-top: 75px"),
            h6("February 2, 2020", style = "margin-top: 25px"),
            column(
              12,
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
                      img(src = "lebowskifadesquare.jpg", align = "center", width = "300px", style = "margin-top:25px;")
                    )
                  )
                ),
                column(3)
              )
            )
          ),
          fluidRow(
            h3("Our proposal", style = "margin-top: 75px"),
            h6("December 24, 2022", style = "margin-top: 25px"),
            column(
              12,
              fluidRow(
                column(
                  3
                ),
                column(
                  6,
                  align = "center",
                  style = "margin-bottom:50px;",
                  fluidRow(
                    column(
                      6,
                      img(src = "ringfadesquare.jpg", align = "center", width = "300px", style = "margin-top:25px;")
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
                  p("1.00 PM"),
                  p("Bear Chase Brewing Company", style = "margin-top: 25px"),
                  p(a(href = "https://www.google.com/maps/place/bear+chase+brewing+company/@39.1106956,-77.8458916,15z/data=!4m2!3m1!1s0x0:0x42b23afb12ce78d2?sa=X&ved=2ahUKEwiDt4-Zr8_9AhW7hP0HHeF_ACEQ_BJ6BQiNARAD", "33665 Bear Chase Ln, Bluemont, VA 20135", .noWS = "outside", target="_blank"), .noWS = c("after-begin", "before-end")),
                  fluidRow(
                    column(2),
                    column(
                      8,
                      p("Join us in the scenic Blue Ridge mountains for a pre-wedding hike.", style = "margin-top: 25px; text-align: justify;")
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
                  style = "margin-bottom:50px;",
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
        title = "Attendance",
        fluidPage(
          fluidRow(
            column(
              12,
              align = "center",
              fluidRow(
                column(
                  12,
                  align = "center",
                  p("Thanks for letting us know if you're joining!"),
                  p("Please respond before August 21st."),
                  p("Submit one form per individual:")
                )
              ),
              fluidRow(
                column(3),
                column(
                  3,
                  align = "center",
                  style = "margin-top: 25px;",
                  textInput(
                    inputId = "firstname",
                    label = "First name:"
                  )
                ),
                column(
                  3,
                  align = "center",
                  style = "margin-top: 25px;",
                  textInput(
                    inputId = "lastname",
                    label = "Last name:"
                  )
                ),
                column(3)
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  style = "margin-top: 25px;",
                  radioButtons(
                    inputId = "rsvp",
                    label = "Will you attend the wedding?",
                    choiceNames = c("Happily accept", "Regretfully decline"),
                    choiceValues = c("Yes", "No"),
                    inline = TRUE
                  )
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  style = "margin-top: 25px;",
                  textInput(
                    inputId = "song",
                    label = "What song would bring you to the dance floor?"
                  )
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  style = "margin-top: 25px;",
                  textInput(
                    inputId = "remarks",
                    label = "Do you have additional remarks?"
                  )
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  style = "margin-bottom:50px;",
                  actionButton(
                    inputId = "submit",
                    label = "Send to Allison & Kobus",
                    class = "shine"
                  )
                )
              )
            )
          )
        )
      ),
      tabPanel(
        title = "Travel and accommodation",
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
                  style = "margin-bottom:50px;",
                  icon("plane-arrival", "fa-3x", style = "margin-top: 25px"),
                  h1("Travel"),
                  h3("Washington Dulles International Airport (IAD)", style = "margin-top: 25px"),
                  fluidRow(
                    column(2),
                    column(
                      8,
                      p("KLM has direct flights between Amsterdam and Washington every day and the venue is less than an hour by car from the airport.", style = "margin-top: 25px; text-align: justify;"),
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
                  h3("Hampton Inn and Suites", style = "margin-top: 25px"),
                  p("Oct 20th, 15.00 PM - Oct 21st, 12.00 PM"),
                  p(a(href = "https://www.google.com/maps/place/Hampton+Inn+%26+Suites+Charles+Town/@39.2999214,-77.8440491,17z/data=!3m1!4b1!4m6!3m5!1s0x89b6017f30687469:0x641dcc3e720e3e71!8m2!3d39.2999214!4d-77.8418604!16s%2Fg%2F11c2pwxk7c", "157 Pimlico Dr, Charles Town, WV 25414", .noWS = "outside", target="_blank"), .noWS = c("after-begin", "before-end")),
                  fluidRow(
                    column(2),
                    column(
                      8,
                      align = "center",
                      style = "margin-bottom:50px;",
                      p(
                        "For your convenience, a block of rooms has been set aside at Hampton Inn & Suites in Charles Town, West Virginia. ",
                        "Reservations within the block may be made by phone or online: ",
                        br(),br(),
                        "1. Call 1-304-725-2200, speak with one of the guest service agents and let them know you want to book a room for October 20th, 2023 in the group code CBW (Crawford Bosman Wedding).",
                        br(),br(),
                        "2. Visit ",
                        a(href = "https://group.hamptoninn.com/vwzdtf", "here", .noWS = "outside", target="_blank"), " ", .noWS = c("after-begin", "before-end"),
                        "and edit the dates if necessary. Use the group code CBW when making your booking. ",
                        br(),br(),
                        style = "margin-top: 25px; text-align: justify;"
                      ),
                      p("Please note the cut-off date for reservations is: ", style = "margin-top:0px; font-weight:1000; font-size:1.1em;"),
                      p("September 21st, 2023. ", style = "margin-top:0px; font-weight:1000; font-size:1.1em;"),
                      p(
                        "After this date, reservations at the rate offered will still be accepted on a space-available basis only by dialing the hotel directly. ",
                        br(),br(),
                        "A shuttle between the Hampton Inn and Suites and the wedding venue will be provided.",
                        style = "margin-top: 25px; text-align: justify;"
                      ),
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
        title = "Things to do",
        fluidPage(
          fluidRow(
            column(3),
            column(
              6,
              align = "center",
              shinycssloaders::withSpinner(
                leafletOutput("thingstodo"),
                type = 8,
                color = "#4c774f"
              )
            ),
            column(3)
          ),
          fluidRow(
            column(2),
            column(
              4,
              align = "center",
              h1("Frederick", style = "margin-top:75px"),
              img(src = "frederick.jpg", align = "center", width = "300px", style = "margin-top:25px;"),
              fluidRow(
                column(2),
                column(
                  8,
                  p("If you're interested in seeing Allison's hometown, head to Frederick, Maryland. The historic downtown is particularly fun with it's quirky shops and hip restaurants. We recommend Hippie Chick Hummus and Cafe Nola.", style = "margin-top: 25px; text-align: justify;")
                ),
                column(2)
              )
            ),
            column(
              4,
              align = "center",
              h1("Shenandoah", style = "margin-top:75px"),
              img(src = "shenandoah.jpg", align = "center", width = "300px", style = "margin-top:25px;"),
              fluidRow(
                column(2),
                column(
                  8,
                  p("Nature lovers can't miss the stunning views from Skyline Drive and endless hikes in this nearby national park. Scramble up Old Rag if you're up for a challenge!", style = "margin-top: 25px; text-align: justify;")
                ),
                column(2)
              )
            ),
            column(2)
          ),
          fluidRow(
            column(2),
            column(
              4,
              align = "center",
              h1("Baltimore", style = "margin-top:75px"),
              img(src = "baltimore.jpg", align = "center", width = "300px", style = "margin-top:25px;"),
              fluidRow(
                column(2),
                column(
                  8,
                  p("Home of The Wire, Hairspray, and Edgar Allen Poe, Charm City speaks for itself. We recommend strolling around Fed Hill for a view of the harbor. Go Ravens!", style = "margin-top: 25px; text-align: justify;")
                ),
                column(2)
              )
            ),
            column(
              4,
              align = "center",
              style = "margin-bottom:50px;",
              h1("Washington", style = "margin-top:75px"),
              img(src = "mall.jpg", align = "center", width = "300px", style = "margin-top:25px;"),
              fluidRow(
                column(2),
                column(
                  8,
                  p("Spend some time in the nation's capital walking along the National Mall, hitting a bar in Dupont Circle, or enjoying one of the many free Smithsonian museums.", style = "margin-top: 25px; text-align: justify;")
                ),
                column(2)
              )
            ),
            column(2)
          )
        )
      ),
      tabPanel(
        title = "Line-up",
        fluidPage(
          fluidRow(
            column(
              3,
              align = "center",
              style = "margin-bottom:35px",
              h4("Taryn Blake Events", style = "margin-top:25px; margin-bottom:25px"),
              div(
                img(src = "taryn.jpg", align = "center", width = "200px"),
                style = "display:flex; justify-content:center; align-items: center; height:200px;"
              )
            ),
            column(
              3,
              align = "center",
              style = "margin-bottom:35px",
              h4("Bear Chase Brewing Company", style = "margin-top:25px; margin-bottom:25px"),
              div(
                img(src = "bearchasefaded.jpg", align = "center", width = "200px"),
                style = "display:flex; justify-content:center; align-items: center; height:200px;"
              )
            ),
            column(
              3,
              align = "center",
              style = "margin-bottom:35px",
              h4("The Vegan Factory", style = "margin-top:25px; margin-bottom:25px"),
              div(
                img(src = "tvftruck.png", align = "center", width = "200px"),
                style = "display:flex; justify-content:center; align-items: center; height:200px;"
              )
            ),
            column(
              3,
              align = "center",
              style = "margin-bottom:35px",
              h4("Sammy's Rental", style = "margin-top:25px; margin-bottom:25px"),
              div(
                img(src = "sammys.png", align = "center", width = "200px"),
                style = "display:flex; justify-content:center; align-items: center; height:200px;"
              )
            )
          ),
          fluidRow(
            column(
              3,
              align = "center",
              style = "margin-bottom:35px",
              h4("The Bere Collective", style = "margin-top:25px; margin-bottom:25px"),
              div(
                img(src = "theberecollectivelogocircle.png", align = "center", width = "200px"),
                style = "display:flex; justify-content:center; align-items: center; height:200px;"
              )
            ),
            column(
              3,
              align = "center",
              style = "margin-bottom:35px",
              h4("Fine Art Wedding Film", style = "margin-top:25px; margin-bottom:25px"),
              div(
                img(src = "fineart.jpg", align = "center", width = "200px"),
                style = "display:flex; justify-content:center; align-items: center; height:200px;"
              )
            ),
            column(
              3,
              align = "center",
              style = "margin-bottom:50px;",
              h4("I-76 Entertainment", style = "margin-top:25px; margin-bottom:25px"),
              div(
                img(src = "i76highway.png", align = "center", width = "200px"),
                style = "display:flex; justify-content:center; align-items: center; height:200px;"
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
              style = "margin-bottom:50px;",
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
        title = "Moments",
        uiOutput("imageboard")
      ),
      tabPanel(
        title = "FAQs",
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
                      fluidRow(
                        h4("Can I bring a guest?", style = "text-align:justify")
                      ),
                      fluidRow(
                        p("Maybe! If there's someone special in your life that you would love to bring along, reach out to Allison or Kobus and we may be able to squeeze them onto the guest list.", style = "margin-bottom:50px; text-align: justify;")
                      )
                    ),
                    column(2)
                  )
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  fluidRow(
                    column(2),
                    column(
                      8,
                      fluidRow(
                        h4("What should I wear?", style = "text-align:justify")
                      ),
                      fluidRow(
                        p("Cocktail attire: wear cocktail dresses, dressy jumpsuits, suits and jackets and slacks.", style = "margin-bottom:50px; text-align: justify;"))
                      )
                    ,
                    column(2)
                  )
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  fluidRow(
                    column(2),
                    column(
                      8,
                      fluidRow(
                        h4("What kind of food will there be?", style = "text-align:justify")
                      ),
                      fluidRow(
                        p("The menu will be all-vegan! We will have a food truck for the main course and some additional snacks and desserts.", style = "margin-bottom:50px; text-align: justify;"))
                    )
                    ,
                    column(2)
                  )
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  fluidRow(
                    column(2),
                    column(
                      8,
                      fluidRow(
                        h4("Can I arrive early?", style = "text-align:justify")
                      ),
                      fluidRow(
                        p("Yes! We have booked the venue for the weekend so feel free to arrive around 3PM and play some lawn games and hang out while we are getting ready.", style = "margin-bottom:50px; text-align: justify;"))
                    )
                    ,
                    column(2)
                  )
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  fluidRow(
                    column(2),
                    column(
                      8,
                      fluidRow(
                        h4("Do I need to learn any Dutch?", style = "text-align:justify")
                      ),
                      fluidRow(
                        p("Dat kan maar dat is helemaal niet nodig! Met gebaren, geluiden en lichaamstaal kom je al een heel eind.", style = "margin-bottom: 50px; text-align: justify;"))
                    )
                    ,
                    column(2)
                  )
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  fluidRow(
                    column(2),
                    column(
                      8,
                      fluidRow(
                        h4("What is the meaning of life?", style = "text-align:justify")
                      ),
                      fluidRow(
                        p("Love!", style = "margin-bottom: 50px; text-align: justify;"))
                    )
                    ,
                    column(2)
                  )
                )
              ),
              fluidRow(
                column(
                  12,
                  align = "center",
                  fluidRow(
                    column(2),
                    column(
                      8,
                      fluidRow(
                        h4("This website is amazing! How did you make it???", style = "text-align:justify")
                      ),
                      fluidRow(
                        p('Kobus made it himself! He used RStudio and Shiny, check out the code on ', a(href = 'https://github.com/kobusbosman/allisonkobuswedding', 'GitHub', .noWS = "outside", target="_blank"), '.', .noWS = c("after-begin", "before-end")) , style = "margin-bottom:50px; text-align: justify;")
                    )
                    ,
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
        title = "Wedding pictures",
        fluidPage(
          fluidRow(
            column(3),
            column(
              6,
              align = "center",
              style = "margin-bottom:50px;",
              fluidRow(
                column(
                  12,
                  align = "center",
                  fluidRow(
                    column(2),
                    column(
                      8,
                      p("Check out our wedding pictures ", a(href = "https://photos.app.goo.gl/kHFF8fgAhLeUs54X7", "here!", .noWS = "outside", target="_blank"), style = "text-align: justify;")
                    ),
                    column(2)
                  )
                )
              )
            ),
            column(3)
          )
        )
      )
    )
  )
)
