# February 14, 2018 Valentine's Day
# https://www.timeanddate.com/time/zones/
library(shiny)
library(shinythemes)
library(lubridate)
library(shinyalert)
library(shinyjs)

ui <- navbarPage(
    title = "Khan Academy Math 1",
    theme = shinytheme("darkly"),
    
    navbarMenu(
        "Addition",
        tabPanel(title = "English",
                 htmlOutput("video_1")),
        tabPanel(title = "Français",
                 htmlOutput("video_1f")),
        tabPanel(title = "Kiswahili",
                 htmlOutput("video_1k"))
    ),
    
    navbarMenu(
        "Subtraction",
        tabPanel(title = "English",
                 htmlOutput("video_2")),
        tabPanel(title = "Français",
                 htmlOutput("video_2f")),
        tabPanel(title = "Kiswahili",
                 htmlOutput("video_2k"))
    ),
    
    navbarMenu(
        "Multiplication",
        tabPanel(title = "English",
                 htmlOutput("video_3")),
        tabPanel(title = "Français",
                 htmlOutput("video_3f")),
        tabPanel(title = "Kiswahili",
                 htmlOutput("video_3k"))
    ),
    
    navbarMenu(
        "Salman Khan",
        tabPanel(title = "Bibliothèques Sans Frontières",
                 htmlOutput("video_sk1")),
        tabPanel(title = "Khan Academy: 2017-18",
                 htmlOutput("video_sk2"))
        
    ),
    
    navbarMenu(
        "Exercises",
        tabPanel(
            title = "Addition",
            
            h4(icon("plus", "fa-2x"), "Basic Addition"),
            p(
                "Welcome. Let's say, I start with an old classic:",
                span("1 + 1", style = "color:yellow"),
                ". If I have one avocado and you give me another avocado, how many do I have?
                A number line can help us understand basic addition. When we add on the number line,
                we go right. To subtract, we go left. What if I asked you, what",
                span("8 + 1", style = "color:yellow"),
                "is? On the number line, start at 8 and add 1. You don't have to memorize,
                you just have to keep practicing. What is",
                span("5 + 6", style = "color:yellow"),
                "? Now I'm going to ask you a question, what is",
                span("6 + 5", style = "color:yellow"),
                "? It doesn't in what order you add the numbers. The result of addition is called a 'sum'.
                Finally, did you notice what happens when you add a negative number
                (one with a minus sign in front of it? This is the same as taking it
                away or subtracting it."
                ),
            
            h4("Number Line"),
            tabPanel(
                "",
                tags$img(
                    src = "NumberLine.jpg",
                    width = "700px",
                    height = "100px"
                )
            ),
            br(),
            verbatimTextOutput("add"),
            
            useShinyjs(),
            div(
                id = "add_all",
                sliderInput(
                    inputId = "a",
                    label = "Choose a number from -50 to 50: a",
                    value = 1,
                    min = -50,
                    max = 50
                ),
                sliderInput(
                    inputId = "b",
                    label = "Choose a number from -50 to 50: b",
                    value = 1,
                    min = -50,
                    max = 50
                ),
                
                br(),
                actionButton("resetA_1", "Reset first number (a)"),
                actionButton("resetA_2", "Reset second number (b)"),
                actionButton("reset_add_all", "Reset both numbers (a and b)")
            ),
            
            br(),
            verbatimTextOutput("add2"),
            verbatimTextOutput("goodjob")
                ),
        
        tabPanel(
            title = "Subtraction",
            h4(icon("minus", "fa-2x"), "Basic Subtraction"),
            p(
                "",
                span("Subtraction", style = "color:yellow"),
                "is the opposite of",
                span("addition", style = "color:yellow"),
                ". Instead of adding a number to another number,
                you take away or subtract one from the other. The number that is left is called the",
                span("difference", style = "color:yellow"),
                ". Another way to say subtract is ",
                span("minus", style = "color:yellow"),
                ". If you subtract 3 lemons from 4 lemons,
                how many do you have left? Use the number line, if
                it helps you see what has happened. Did you notice that subtracting a negative
                number is done by adding it? This will become less confusing with practice."
            ),
            h4("Number Line"),
            tabPanel(
                "",
                tags$img(
                    src = "NumberLine.jpg",
                    width = "700px",
                    height = "100px"
                )
            ),
            br(),
            verbatimTextOutput("lemons"),
            
            useShinyjs(),
            div(
                id = "subtract_all",
                sliderInput(
                    inputId = "c",
                    label = "Choose a number from -50 to 50: a",
                    value = 1,
                    min = -50,
                    max = 50
                ),
                sliderInput(
                    inputId = "d",
                    label = "Choose a number from -50 to 50: b",
                    value = 1,
                    min = -50,
                    max = 50
                ),
                
                br(),
                actionButton("resetS_1", "Reset first number (a)"),
                actionButton("resetS_2", "Reset second number (b)"),
                actionButton("reset_subtract_all", "Reset both numbers (a and b)")
                
            ),
            br(),
            verbatimTextOutput("sub")
            
            ),
        
        tabPanel(
            title = "Multiplication",
            h4(icon("times", "fa-2x"), "Basic Multiplication"),
            p(
                "Mutiplication is a simple way of doing addition over and over again.
                What does 2 x 3 mean? (x is the symbol for multiplication)
                This calculation means you add 2 three times or add 3 two times. The result
                equals 6 and is the same in either direction, It is called the",
                span("product", style = "color:yellow"),
                " . If there are 3 lemons in a row and you have 4 rows, you have a total
                of 12 lemons. Any number multiplied by one is unchanged. Any number multiplied by zero
                is zero. Finally notice that the product of a postive and a negative number is
                negative, but the product of two negative numbers is positive."
            ),
            h4("Number Line"),
            tabPanel(
                "",
                tags$img(
                    src = "NumberLine.jpg",
                    width = "700px",
                    height = "100px"
                )
            ),
            br(),
            verbatimTextOutput("lemons2"),
            
            useShinyjs(),
            div(
                id = "reset_mult_all",
                sliderInput(
                    inputId = "e",
                    label = "Choose a number from -50 to 50: a",
                    value = 1,
                    min = -50,
                    max = 50
                ),
                sliderInput(
                    inputId = "f",
                    label = "Choose a number from -50 to 50: b",
                    value = 1,
                    min = -50,
                    max = 50
                ),
                
                br(),
                actionButton("resetN_1", "Reset first number (a)"),
                actionButton("resetN_2", "Reset second number (b)"),
                actionButton("mult_all", "Reset both numbers (a and b)")
                
            ),
            br(),
            verbatimTextOutput("mult")
            
            ),
        
        tabPanel(
            title = "Practice",
            h5(textOutput("currentTime")),
            h5(textOutput("GMT_Zone")),
            
            # useShinyjs(),
            div(
                id = "reset",
                textInput("name_in", "Hi.  What is your name?  Can you type it?"),
                verbatimTextOutput("name_out"),
                actionButton("reset_name", "Reset Name")
            ),
            
            sliderInput(
                inputId = "x",
                label = "Choose a number from -50 to 50: a",
                value = 1,
                min = -50,
                max = 50
            ),
            sliderInput(
                inputId = "y",
                label = "Choose a number from -50 to 50: b",
                value = 1,
                min = -50,
                max = 50
            ),
            
            radioButtons(
                "math",
                "Choose a Mathematical Function",
                c(
                    "Add" = "Addition",
                    "Subtract" = "Subtraction",
                    "Multiply" = "Multiplication"
                )
            ),
            
            verbatimTextOutput("bkotime"),
            verbatimTextOutput("txt") ,
            
            verbatimTextOutput("practice"),
            verbatimTextOutput("goodjob2"),
            
            useShinyalert(),
            # Set up shinyalert
            actionButton("popup", "Click Me"),
            
            tabPanel(
                "",
                tags$img(
                    src = "BlueOwl.png",
                    width = "100px",
                    height = "100px",
                    icon("plus", "fa-5x"),
                    icon("minus", "fa-5x"),
                    icon("times", "fa-5x"),
                    icon("thumbs-up", "fa-5x"),
                    icon("laptop", "fa-5x"),
                    icon("basketball-ball", "fa-5x"),
                    icon("graduation-cap", "fa-5x")
                )
            )
        )
    )
)

server = function(input, output, session) {
    output$video_1 <- renderUI({
        tags$iframe(width = "1000",
                    height = "500",
                    src = "https://www.youtube.com/embed/AuX7nPBqDts?t=25")
    })
    
    
    output$video_1f <- renderUI({
        tags$iframe(width = "1000",
                    height = "500",
                    src = "https://www.youtube.com/embed/7CKiA8d_x2U")
    })
    
    output$video_1k <- renderUI({
        tags$iframe(width = "1000",
                    height = "500",
                    src = "https://www.youtube.com/embed/zeWxoUEL6u0")
    })
    
    output$video_2 <- renderUI({
        tags$iframe(width = "1000",
                    height = "500",
                    src = "https://www.youtube.com/embed/aNqG4ChKShI")
    })
    
    output$video_2f <- renderUI({
        tags$iframe(width = "1000",
                    height = "500",
                    src = "https://www.youtube.com/embed/TXUHA2E02ks")
    })
    
    output$video_2k <- renderUI({
        tags$iframe(width = "1000",
                    height = "500",
                    src = "https://www.youtube.com/embed/0H4GHdjXC90")
    })
    
    output$video_3 <- renderUI({
        tags$iframe(width = "1000",
                    height = "500",
                    src = "https://www.youtube.com/embed/mvOkMYCygps")
    })
    
    
    output$video_3f <- renderUI({
        tags$iframe(width = "1000",
                    height = "500",
                    src = "https://www.youtube.com/embed/VHAYBTTDSrs")
    })
    
    output$video_3k <- renderUI({
        tags$iframe(width = "1000",
                    height = "500",
                    src = "https://www.youtube.com/embed/N21ALMVTXFA")
    })
    
    output$add <- renderPrint({
        cat("1 + 1 = ",
            1 + 1,
            #"\n8 + 1 = ",
            # 3 + 4,
            "\n8 + 1 = ",
            8 + 1,
            "\n5 + 6 = ",
            5 + 6,
            "\n6 + 5 = ",
            6 + 5)
    })
    output$add2 <- renderPrint({
        sum <- input$a + input$b
        cat("Sum = a + b =", input$a, "+", input$b, "=", sum)
    })
    
    output$goodjob <- renderPrint({
        good <-
            c(
                "Awesome!",
                "Good job!",
                "Fantastic!",
                "High Five!",
                "Bonté Divine!",
                "Goodness Gracious!",
                "You aced it!",
                "Great!",
                "O de don!",
                "Right on the money!",
                "You nailed it!",
                "Perfect!",
                "Spot on!",
                "You hit the bullseye!"
            )
        choose <- sample(14, 1)
        cat(good[choose])
    })
    
    output$lemons <- renderPrint({
        cat("4 lemons - 3 lemons = the difference = 1 lemon")
    })
    
    output$sub <- renderPrint({
        difference <- input$c - input$d
        cat("Difference = a - b =",
            input$c,
            "-",
            input$d,
            "=",
            difference)
    })
    
    output$mult <- renderPrint({
        product <- input$e * input$f
        cat("Product = a x b =", input$e, "x", input$f, "=", product)
    })
    
    
    output$lemons2 <- renderPrint({
        cat(
            "3 lemons in 1 row x 4 rows = 3+3+3+3 = the product = 12 lemons\n4 lemons in 1 column x  3 columns = 4+4+4 = the product = 12 lemons"
        )
    })
    
    output$video_sk1 <- renderUI({
        tags$iframe(width = "1000",
                    height = "500",
                    src = "https://www.youtube.com/embed/nxASVGZqVbQ?ecver=1")
    })
    
    output$video_sk2 <- renderUI({
        tags$iframe(width = "1000",
                    height = "500",
                    src = "https://www.youtube.com/embed/Teo7hD0ADE0 ")
    })
    
    observeEvent(input$resetA_1, {
        reset("a")
    })
    observeEvent(input$resetA_2, {
        reset("b")
    })
    observeEvent(input$reset_add_all, {
        reset("add_all")
    })
    
    observeEvent(input$resetS_1, {
        reset("c")
    })
    observeEvent(input$resetS_2, {
        reset("d")
    })
    observeEvent(input$reset_subtract_all, {
        reset("subtract_all")
    })
    
    observeEvent(input$resetN_1, {
        reset("e")
    })
    observeEvent(input$resetN_2, {
        reset("f")
    })
    observeEvent(input$mult_all, {
        reset("reset_mult_all")
    })
    
    output$currentTime <- renderText({
        invalidateLater(1000, session)
        paste("Date and Time (GMT/UTC+0/Zulu/Bamako) = ",
              with_tz(ymd_hms(Sys.time(),
                              tz = input$tzone), tz = "GMT"))
        
    })
    
    output$GMT_Zone <- renderPrint({
        gmt_time <-
            c(
                "Reykiavik, Iceland",
                "Dublin, Ireland (until the end of March)",
                "London, England (until the end of March)",
                "Lomé, Togo",
                "Dakar, Senegal",
                "Conakry, Guinea",
                "Ouagadugou, Burkina Faso",
                "Nouakchott, Mauritania",
                "Jamestown, St. Helena",
                "Tenerife, Canary Islands (until the end of March)",
                "Bissau, Guinea Bissau",
                "Banjul, Gambia",
                "Danmarkshavn, Greenland",
                "Tórshavn, Faroe Islands (until the end of March)",
                "Accra, Ghana",
                "the Isle of Man (until the end of March)",
                "Abijan, Ivory Coast",
                "Jersey (until the end of March)",
                "Rabat, Morocco (until the end of March)",
                "the Western Sahara (until the end of March)",
                "Lisbon, Portugal (until the end of March)",
                "Freetown, Sierra Leone",
                "Monrovia, Liberia",
                "Edinburgh, Scotland (until the end of March)"
            )
        city <- sample(24, 1)
        cat(
            "Did you know that Bamako, Mali and",
            gmt_time[city],
            "are both in the Greenwich Mean Time Zone?"
        )
        
    })
    
    output$name_out <- renderPrint({
        if (!input$name_in == "")
            cat("Welcome", input$name_in, ". You're off to the races.")
    })
    
    
    output$txt <- renderText({
        paste("You chose", input$math)
    })
    
    
    output$practice <- renderPrint({
        sum <- input$x + input$y
        difference <- input$x - input$y
        product <- input$x * input$y
        if (input$math == "Addition") {
            cat("Sum = a + b =", input$x, "+", input$y, "=", sum)
        } else if (input$math == "Subtraction") {
            cat("Difference = a - b =",
                input$x,
                "-",
                input$y,
                "=",
                difference)
        } else {
            cat("Product = a x b =", input$x, "*", input$y, "=", product)
        }
    })
    
    
    
    observeEvent(input$reset_name, {
        reset("reset")
    })
    
    output$goodjob2 <- renderPrint({
        good2 <-
            c(
                "Your brain is like a muscle. It gets stronger with exercise.",
                "If at first you don't succeed, try, try again.",
                "Try to learn something new every day.",
                "Learning is not a spectator sport.",
                "I think, therefore I am. - René Descartes.",
                "The journey is the reward.",
                "Whatever you can do, or dream you can do, begin it.",
                "Learning is like rowing upstream.",
                "Never stop learning.",
                "Practice makes perfect.",
                "Don o don tolo be ta kalan so."
            )
        
        choose2 <- sample(11, 1)
        cat(good2[choose2])
    })
    
    
    observeEvent(input$popup, {
        # Show a modal when the button is pressed
        shinyalert(
            "Awesome!",
            "You did it.",
            type = "success",
            timer = 3000,
            confirmButtonCol = "Red",
            inputPlaceholder = "",
            confirmButtonText = "That was fun!"
        )
    })
    
}

shinyApp(ui = ui, server = server)
