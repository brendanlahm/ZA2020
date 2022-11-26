############################################## Shiny app for plotting admixture
##### The repository must be located inside of your working directory
#### list.files() -> shows "ZA2020"

library(shiny)
library(reshape2)
library(ggplot2)

### Importing info for sampling year, location & host

isolates2 <- read.table("~/ZA2020/data/36_isolates2.tab", header = T, row.names = NULL)
locations <- read.table("~/ZA2020/data/36_locations.tab", header = T)
hosts2 <- read.table("~/ZA2020/data/36_hosts2.tab", header = T, row.names = NULL)
years <- read.table("~/ZA2020/data/36_years.tab", header = T, row.names = NULL)

years$Year <- as.character(as.numeric(years$Year))

ui <- fluidPage(
  titlePanel("Admixture Plotting"),
  
  fluidRow(
    
    column(3, 
           h3("# Subpopulations"),
           numericInput("k_value", 
                        value = 2,
                        min = 2,
                        max = 6,
                        helpText("Select number of estimated subpopulations (K).", 
                                 "The minimum possible value is 2. The maximum possible value is 6.")))

    ),

  mainPanel(
    
    textOutput("selected_k"),
    plotOutput("plot")),
    
)


server <- function(input, output, session=session) {
  
  output$selected_k <- renderText({ 
    paste("You have selected K =", input$k_value)
  })
  
  pops <- reactive({
    
    pops1 <- paste0("K", input$k_value)
    pops1
  
  })
  
  observeEvent(input$k_value, {

    isolate({

    print(pops())

    })
    
  })
    
  output$plot <- renderPlot({
    
    file <- read.table(paste0("~/ZA2020/R_scripts/Admixture_files/SNPs4_leafy.", pops(), ".Q"))
      
    K6T <- data.frame(isolates2, locations, years, hosts2, file)
    K6T2 <- melt(K6T)

    K6T2$Location_f = factor(K6T2$Location, levels=c('A','EA','L1a','L1b','L3','L6','L7','L8','L11'))
      
    req(K6T2)
    ggplot(K6T2, aes(x = Isolate, y = value, fill = variable, label = Location)) +
      geom_bar(position = "fill", stat = "identity", alpha = 0.8) +
      facet_wrap(Location_f~Host~Year, ncol = 9, scales="free_x") +
      theme_classic(base_size = 14) + ylab("Anc. Proportions") + scale_fill_brewer(palette = "Set1") +
      scale_fill_manual(values=c("#CC00FF", "#009900", "#66CC00", "#E69F00", "#FF6666", "#56B4E9")) +
      theme(legend.position = "none", axis.title.x = element_blank(), axis.title.y = element_blank(), axis.text.x = element_text(size=14, angle=90),
            strip.text.x = element_text(size = 14), strip.background = element_blank())

  })
  
}


shinyApp(ui = ui, server = server)

