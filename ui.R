library(markdown)



  shinyUI(fluidPage(

  # Application title
  titlePanel("Visualizing functions"),


  sidebarLayout(
    sidebarPanel(
      h5(textOutput("hits")),

      # selectInput("testfunction", label = "Functions:",
      #             choices = c("x*2", "x*2+2", "x^2", "exp(x)", "cos(x)"), selected = 1),
      textInput("testfunction", "Enter a function (e.g. x+2):", "x*2"),
      numericInput("from", "Plot function from:", "-20"),
      numericInput("to", "Plot function to:", "20"),
      # numericInput("numbers", "Enter observations:", "200"),
      sliderInput("xrange", "Change x-range of plot:", min = -200, max = 200, value = c(-50,50)),
      sliderInput("yrange", "Change y-range of plot:", min = -200, max = 200, value = c(-50,50)),
      br(), br(),
      
      div("Shiny app by", 
          a(href="http://paulcbauer.eu/",target="_blank", 
            "Paul C. Bauer"),align="right", style = "font-size: 8pt"),
      
      
      div("Shiny/R code:",
          a(href="https://github.com/paulbauer/visualizing_functions/",
            target="_blank","GitHub"),align="right", style = "font-size: 8pt")


  ),

 mainPanel(
      tabsetPanel(type = "tabs",
        tabPanel("Plot", plotOutput("plot")),
        tabPanel("Instructions", includeMarkdown("instruction.md")),
        tabPanel("About", includeMarkdown("about.md"))

      )
    )
  )
))

















