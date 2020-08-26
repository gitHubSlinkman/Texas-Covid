# build_date_file_name.R

require(tidyverse)
require(lubridate)
require(stringr)

build_date_file_name <-
    function( yyyymmdd ){
        
    ###########################################################################
    # Extract year, month, and day from date and convert them to characters.
    ###########################################################################
        
       yyyy <- as.character( year( yyyymmdd ))
       mm   <- as.character( month( yyyymmdd )) 
       dd   <- as.character( day( yyyymmdd ))
       
       ########################################################################
       # Ensure that monnth a days are two characters long by adding a leading
       # zero if necessary
       ########################################################################
       
       l <- str_length( mm )
       
       mm <- ifelse( l == 1, 
                      paste0( "0", mm),
                               mm )
       
       dd  <- ifelse( mm == 2,
                      paste0( "", as.character( dd )),
                              dd )
       
       ##f######################################################################
       # Return the pasted file name components together.
       #########################################################################
       
       paste0( yyyy, "-",
               mm,   "-",
               dd,   ".csv")
    }
