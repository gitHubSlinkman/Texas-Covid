# determine_plot_period.R
#
###############################################################################
# Load required packages
###############################################################################

require( tidyverse )                        # I live in the tidyverse ...
require( lubridate )                        # For advanced date processing ...

determine_plot_period <- 
    function( data ){
        
        ################################################################
        # Extract the dates from the tibble.
        ################################################################
        
        dates <- 
            data %>% 
                pull( date )
        
        
        ###############################################################
        # Find the beginning date and the last date od the data ro
        # be plotted and return the values.
        ###############################################################
        
       c( min(dates), max(dates) )
    }