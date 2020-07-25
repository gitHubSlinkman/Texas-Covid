# get_texas_data.R
###############################################################################
# This function reads the daily Texas data from COVID tracking project and
# returns the data.
###############################################################################

require( tidyverse )                             # I live in the tidyverse.
require( lubridate )                             # For date processing.
           
get_texas_daily_covid_data <- 
    function()
    {
        #######################################################################
        # Specify organization and file urls and then build complete url
        # used to read file
        #######################################################################
        ORGANIZATION <- "https://covidtracking.com"   # Path to project.
        TEXAS        <- "api/v1/states/tx/daily.csv"  # Data file name
        
        URL        <-  file.path( ORGANIZATION,
                                  TEXAS )
        #######################################################################
        # Read file and return
        #######################################################################
        
        texas <- read_csv( URL )
        
        texas <- 
            texas %>% 
                mutate( date = date(ymd(date)))
        texas 
    }

