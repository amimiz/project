library(shiny)
library(graphics)
counties <- readRDS("data/counties.rds")

shinyServer(function(input, output) {
  output$graph <- renderPlot({
    
    data <- switch(input$var, 
                   "Percent White" = counties$white,
                   "Percent Black" = counties$black,
                   "Percent Hispanic" = counties$hispanic,
                   "Percent Asian" = counties$asian,
                   "Total Population" = counties$total.pop)
    color <-switch(input$var, 
                   "Percent White" = "darkgreen",
                   "Percent Black" = "black",
                   "Percent Hispanic" = "darkviolet",
                   "Percent Asian" = "brown",
                   "Total Population" = "blue")
    
    title <-switch(input$var, 
                   "Percent White" = "% White",
                   "Percent Black" = "% Black",
                   "Percent Hispanic" = "% Hispanic",
                   "Percent Asian" = "% Asian",
                   "Total Population" = "Total Pop")
    
  switch(input$graph_type,
         "Histogram" = hist(data,
                            col=color,
                            main = paste("Histogram of" , title)
                            ), 
          "Box Plot" = boxplot(data,
                                 col=color,
                                 main = paste("Boxplot of" , title)), 
         "Dot Chart" = dotchart(data,
                                col=color,
                                 main = paste("Dotchart of" , title)) 
         
         )}
  )


  output$text1 <- renderText({
     paste("Graph of ", input$var, " in different counties in the US:")    
    })
  
    
  
  })

