shinyUI(pageWithSidebar(
  headerPanel('Working attitude tests'),
  sidebarPanel(
    selectInput(inputId = 'var' , 'Variable:', names(attitude[,-1])),
    radioButtons(inputId = 'var2', 'Colored by:',choices = names(attitude[,-1]))
    ),
                
  mainPanel(
    tabsetPanel(
      tabPanel('READ ME',
               h3('Introduction:'),
               p('This is a basic exploratory data analysis study by shiny, using data ',span(code('attitude')),
               'from package',span(code('datasets'))),
               br(),
               p('The shiny apps shows different variables\'s relationship between ',span(code('Rating'),'.')),
               h3('How to use:'),
               h5('1. Choose variable in intrest from sidebar, ',span(code('Variable')),'will become y axis and '
                  ,span(code('colored by')),'will become the color of point.'),
               h5('2. See the output image in ',span(code('Plot')),'tab.'),
               h5('3. Check detail summary for linear regression from y axis variable and rating in tab',span(code('Summary Statistics')),'.'),
               h3('Variable description:'),
               helpText('complaints: numeric	Handling of employee complaints'),
               helpText('privileges: numeric	Does not allow special privileges'),
               helpText('learning: numeric	Opportunity to learn'),
               helpText('raises: numeric	Raises based on performance'),
               helpText('critical: numeric	Too critical'),
               helpText('advancel: numeric	Advancement')
      ),
      tabPanel("Plot",
               h3(textOutput('text1'),align='center'),
               plotOutput("plot1")
      ),
      tabPanel("Summary Statistics",
               verbatimTextOutput("text2"))
      )
  )
))