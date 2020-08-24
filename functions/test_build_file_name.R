# test_build_today.R

require(tidyverse)
require(lubridate)
require(stringr)

source( file.path( getwd(),
                   "functions",
                   "build_file_name.R" ))

gaurentee_2_digits( "1" )
gaurentee_2_digits( "12" )
gaurentee_2_digits( "123" )



