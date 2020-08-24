# get_texas_dips_codes.R

require(tidyverse)                           
require(readr)

get_texas_fips_codes <- 
    function(){
        fp <-                                     # Define file path.    
            file.path( "data",
                         "fips_codes.csv" )
        read_csv( fp )                            # Read Texas fips_codes.        
        
    }
