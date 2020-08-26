# get_data.R

#' get_data
#' 
#' This function is designed to minimize the number of times the New York Times
#' Github data needs to be accessed.
#' 
#' This function reads data either from the New York Times GitHub project or
#' the locale data directory for this project. Note that the names of covid
#' files are in yyyy-mm-dd.csv format. 
#' 
#' It first checks to see if the data for the current system data exists on 
#' the locale machine and if does it reads that data and returns it to the 
#' invoking script.
#' 
#' Otherwise the data is read from the NYT-Gihub-project.  It is then 
#' immediately saved in the data sub-folder of this project.  The data is then
#' returned to to the invoking script.
#' 
#' @return The currently available New York times covid data assuming that only
#'         one down load is made per day.
#' @export
#'
#' @examples
#' 
#'
 
################################################################################
# Load required packages.
################################################################################

require( tidyverse )                    # I live in the tidyverse ...
require( readr )                        # To read csv files
require( lubridate )                    # For date processing 


################################################################################
# Load required functions.
################################################################################

source('D:/R-Projects/TexasCovid/functions/file_exists.R')
source('D:/R-Projects/TexasCovid/functions/get_data_from_github.R')
source('D:/R-Projects/TexasCovid/functions/get_date_locally.R')



get_data <- 
    function()
    {   ########################################################################
        # Build the date file name.
        ########################################################################
        
        fname        <- build_date_file_name( today() )
        
        
        #######################################################################
        # Does the file exist already?
        #######################################################################
        
        exists <- file_exists( fname )
        
        #######################################################################
        # If the file exists then we read the file locally.  If not we read it
        # from GitHub                                                          
        #######################################################################
        
        covid <- ifelse( exists,
                         get_local_data( fname ),
                         get_data_from_github())
        
        ########################################################################
        # If we donot have a local copy of ther We save the data locally in 
        # the data sub-directory using the file using the current date as the
        # file name.
        ########################################################################
        
        if(!exists) save_data_locally( covid )
        
        ########################################################################
        # Return the data for further analysis.
        ########################################################################
        
        covid
    }