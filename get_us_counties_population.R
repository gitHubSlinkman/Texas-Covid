# get_us_county_population.R

require(tidyverse)
require(lubridate)
require(readr)

get_us_county_population <- 
    function(){

       fp <- file.path( "data", 
                        "estimated_us_county_population.csv" )
        
        census <- read_csv( fp )
    }

