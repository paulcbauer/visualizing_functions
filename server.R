

# Counter
# A server parameters
SP <- list()
# Record the number of poeple who have used the app
#    since initiation on the server
SP$npers <- 0


shinyServer(function(input, output) {
  
  # Counter
  # shinyServer is Started up every time the domain is called.
  # Use <<- to assign to the global server environment.
  SP$npers <<- SP$npers + 1
  output$hits <- renderText({
    paste0("Pageviews: " , SP$npers)
  })
  
  
  
  
  foo <- function(x){x+3}

 
 
output$plot <- renderPlot({
  min <- input$from
  max <- input$to
  # numbers <- input$numbers
  numbers <- 200
  y.max <- input$y.max
  xrange <- input$xrange 
  yrange <- input$yrange 
  
  # input.function <- 
  
  body(foo) <- parse(text = input$testfunction)
  
  par(mar=c(5,5,2,1))
  curve(foo, from = min, to = max, n = numbers, ylab=paste("y = f(x) = ", input$testfunction, sep=""), xlim=xrange, ylim=yrange, cex.axis=2, cex.lab=2, cex.main=2)
  abline(v=0)
  abline(h=0)
  for(i in seq(-200,200,10)){lines(c(-0.3, 0.3), c(i,i)); lines(c(i,i),c(-0.3, 0.3))}

        }, height=400)
})
