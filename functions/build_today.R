# build_file_name.R

require(tidyverse)
require(lubridate)
require(stringr)

build_today <-
    function(){
       yyyymmdd <- today()
       yyyy <- year( yyyymmdd )
       mm   <- month( yyyymmdd) 
       dd   <- day( yyyymmdd )
       c( yyyy, mm, dd )
       
       yyyy <- as.character( yyyy )
       yyyy
       
       mm <- ifelse( mm == 2,
                     paste0("", as.character( mm )),
                              as.character( mm ))
       mm
    }


