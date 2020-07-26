# extract_plot_dates.R
#
extract_plot_dates <- 
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