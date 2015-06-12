# The user-interface definition of the Shiny web app.
library(shiny)
require(markdown)

shinyUI(
    navbarPage("Mortgage Calculator", 
        tabPanel("Simple Interest",
             sidebarPanel(
							numericInput("s.amount", "Enter Amount", min = 1, value = 10000),
							sliderInput("s.rate", "Interest Rate:", min = 5, max = 20, value = 8.25, step = 0.25),
							sliderInput("s.month", "Number of Months:",min = 1, max = 120, value = 60)
						  ),
			 mainPanel(tabsetPanel(tabPanel("Output",textOutput("s.interest"))))
		),
        tabPanel("Compound Interest",
             sidebarPanel(
							numericInput("c.amount", "Enter Amount", min = 1, value = 10000),
							sliderInput("c.rate", "Interest Rate:", min = 5, max = 20, value = 8.25, step = 0.25),
							sliderInput("c.years", "Number of Years:",min = 1, max = 10, value = 5)							
						  ),
			 mainPanel(tabsetPanel(tabPanel("Output",textOutput("c.interest"))))
		),
		tabPanel("EMI Calculator",
             sidebarPanel(
							numericInput("e.amount", "Enter Amount", min = 1, value = 10000),
							sliderInput("e.rate", "Interest Rate:", min = 5, max = 20, value = 8.25, step = 0.25),
							sliderInput("e.years", "Number of Years:",min = 1, max = 10, value = 5)  
						  ),
			 mainPanel(tabsetPanel(tabPanel("Output",textOutput("e.interest"))))
		),
		

        tabPanel("About",mainPanel(includeMarkdown("about.md")))
    )
  
)
