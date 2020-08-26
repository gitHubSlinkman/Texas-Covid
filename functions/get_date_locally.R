# get_todays_local_data.R

###############################################################################
# Required packages.
###############################################################################

require(tidyverse)
require(readr)

get_data_locally <- 
    function( file_path  )
    {
        read_csv( file_path )
    }