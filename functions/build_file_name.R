# build_file_name.R

require(tidyverse)
require(lubridate)
require(stringr)

#'make_2_digits
#' 
#' This function ensures a momth or day string has a leafing zero if it
#'is one digit long.  If it is 2 digits  no change is made.
#'
#' @param s - A character string mornth or that is a most two digits 
#'            long.
#'
#' @return - two digit character string.
#' @export   none
#'
#' @examples
#' 
#' 
#' 
gaurentee_2_digits <- 
    function( s ){
        
        sl <- str_length( s )
        if( sl < 0 | sl > 2 ) 
            warning('String length is not 1 or 2.')
        
        ifelse( str_length( s ) == 1,
                paste0("0", as.character( s )),
                as.character( s )) 
    }



build_file_name <-
    function(){
       yyyymmdd <- today()
       yyyy <- year( yyyymmdd )
       mm   <- month( yyyymmdd) 
       dd   <- day( yyyymmdd )
         
       yyyy <- as.character( yyyy )
       
         mm <- as.character( mm )
         mm <- gaurentee_2_digits( mm )
         
         dd <- as.character( dd )
         dd <- gaurentee_2_digits( dd)
      
         paste0( "NYT-",
                 yyyy,
                 "-",
                 mm,
                 "-",
                 dd,
                 ".csv" )
    }


