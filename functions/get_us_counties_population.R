# get_us_county_population.R

require(tidyverse)
require(lubridate)
require(readr)

get_us_counties_population <- 
    function(){

       fp <- file.path( getwd(),
                        "data", 
                        "census.csv" )
        census <- read_csv( fp )
    }

