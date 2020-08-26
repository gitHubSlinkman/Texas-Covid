# get_data_from_github.R

require( tidyverse )                    # I live in the tidyverse.
require( readr )                        # To use the tidyverse csv function.

###############################################################################
# Load functions.
###############################################################################

source('D:/R-Projects/TexasCovid/functions/build_date_file_name.R')
source('D:/R-Projects/TexasCovid/functions/get_data_from_github.R')


get_data_from_github <- 
    function( )
    {
        #######################################################################
        # The is the url of the New York Times Covid data counties data file.
        #######################################################################
        
        url <- 
           "https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv"
        
        covid <- read_csv( url ) 
        
        #######################################################################
        # Save data locally.
        #######################################################################
        
        fname <- build_date_file_name( today() )
        pname <- file.path( getwd(),
                            "data",
                            fname )
        write_csv( covid, path = fname )
        
        
        #######################################################################
        # Return covid object to the invoking script.
        #######################################################################
        
        covid
    }

