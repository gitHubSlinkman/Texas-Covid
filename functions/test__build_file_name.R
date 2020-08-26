# test_build_date_file_name.R

require(tidyverse)
require(lubridate)
require(stringr)

source('D:/R-Projects/TexasCovid/functions/build_date_file_name.R')

test_date <- ymd( "20000101")
build_date_file_name( test_date )


test_date <- ymd( "19480101" ) 
build_date_file_name( test_date)

test_date <- ymd( "19481026" )
build_date_file_name( test_date)
