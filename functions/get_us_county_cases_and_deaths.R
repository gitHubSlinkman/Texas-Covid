# get_texas_data.R
###############################################################################
# This function reads the daily Texas data from COVID tracking project and
# returns the data.
###############################################################################

require( tidyverse )                             # I live in the tidyverse ...
require( readr )                                 # Tidyverse read ...
require( lubridate )                             # For date processing ...
           
get_us_county_cases_and_deaths <- 
    function()
    {
        #######################################################################
        # Specify organization and file urls and then build complete url
        # used to read file
        #######################################################################
        
        URL <- "https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv"
        
        #######################################################################
        # Read file
        #######################################################################
        
        read_csv(URL)
    }

