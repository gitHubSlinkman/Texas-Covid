# get_us_county_population.R

require(tidyverse)                      # I live in the tidyverse ...
require(lubridate)                      # For advanced date processing ...
require(readr)                          # To read csv file ...
require(stringr)                        # For tidyverse string processing ...

get_us_county_population <- 
    function(){
       
       ###########################################################################
       # Construct file path to file.
       ###########################################################################
        
       fp <- file.path( "data", 
                        "estimated_us_county_population.csv" )
        
        #########################################################################
       # Read us census data with population estimates for states, counties, and
       # cities.
       ##########################################################################
       
        census <- read_csv( fp )
        
        #########################################################################
        # Access vnariables names.  We then change names to lower case. We then
        # set the lower cases names to be the variable names
        #########################################################################
        
        vnames <- names( census )
        vnames <- str_to_lower( vnames )
        names(census) <- vnames
        
        ########################################################################
        # We now need to predict the 2020 cwensus figures because we don't
        # have this data because 2020 data is not available.
        ########################################################################
        
        census$growth <- with( census,
                               popestimate2019/popestimate2010)^(1/9)
        census$pop2019 <- with( census,
                                popestimate2019 * growth )
        
        ########################################################################
        # We want only county data.  The sum level for county data is "050"
        ########################################################################
        
       county_census <- 
            census %>% 
             filter( sumlev == "050" )
        
        #########################################################################
        # We keep only the keys and the 2020 population estimate.
        #########################################################################
        
        county_census %>%
            select( state,
                    county,
                    stname,
                    county_name     = ctyname,
                    population_2020 =  popestimate2020 )
    }

