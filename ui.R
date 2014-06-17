#UI.r

shinyUI(fluidPage(
  titlePanel("Grpah Census Data of different Counties"),
  sidebarLayout(
  sidebarPanel (
           # h2("Census Vis"),
           helpText("create demographic maps with information from the
              2010 US census"),
           selectInput("var", label = h4("Choose a variable to display"), 
                       choices = list("Percent White" = "Percent White",
                                      "Percent Black" = "Percent Black",
                                      "Percent Hispanic" = "Percent Hispanic", 
                                      "Percent Asian" = "Percent Asian",
                                      "Total Population" = "Total Population"), 
                                      selected = "Percent White"),
           radioButtons("graph_type", label = h3("Graph Type"),
                        choices = list("Histogram" = "Histogram", "Box Plot" = "Box Plot",
                                       "Dot Chart" = "Dot Chart" ),selected = "Histogram")),
           
  
  mainPanel(
    textOutput("text1"),
    plotOutput("graph")
    
    )
  
)))