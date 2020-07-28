# plot_ts.R
#
require( tidyverse )                        # I live in the tidyverse ...
require( lubridate )                        # For advanced data handling ...
require( cowplot )                          # For academic plotting ...
require(formattable)                        # For fixed decimal formatting ...
#
###############################################################################
# Required source files
###############################################################################

source('D:/R-Projects/TexasCovid/functions/determine_y_axis_ticks.R')
source('D:/R-Projects/TexasCovid/functions/find_maximum_value.R')

plot_ts <- 
    function( data, 
              variable,
              variable_label,
              title ){   
        
        #######################################################################
        # Determine the y-tick-marks for the time series plot,the maximum
        # plotted y-axis value, and format the y-axis labels.
        #######################################################################
        
        ticks <- determine_y_axis_ticks( data, variable )
        y_max <- find_maximum_value( data, variable )
        these_limits = compute_date_plot_limits( data )
        
        
        ########################################################################
        # Create the time series plot.
        ########################################################################
        
        ggplot( texas,
                aes(x = date, y = variable )) +
            geom_line() +
            scale_x_date( name = "Date",
                          date_labels = "%Y-%m",
                          limits = c( limits = these_limits))
    }
