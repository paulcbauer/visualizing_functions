library(markdown)

shinyUI(fluidPage(

  titlePanel("Visualizing functions"),


  sidebarLayout(
    sidebarPanel(

      textInput("testfunction", "Enter a function (e.g. x+2):", "x*2"),
      numericInput("from", "Plot function from:", "-20"),
      numericInput("to", "Plot function to:", "20"),

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