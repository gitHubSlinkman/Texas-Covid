# determine_y_axis_sequence.r

determine_y_axis_ticks <- 
    function( data, variable ){
        #######################################################################
        # Pull the variable column from the tibble.
        #######################################################################
        y <- 
            data %>% 
              pull( variable )
        
        ##############################################################
        # Remove missing values by substituting zeros for all 
        # missing values
        ##############################################################
       
        y <- ifelse( is.na( y ), 0, y )
        
        #######################################################################
        # Determine the maximum value of the j'th column.
        #######################################################################
        
        max_value <- max( y )
        
        
        #######################################################################
        # Compute the log base 10 of the maximum_value and cast as an 
        # integer. The to-value will be 10 raised to the power 10^(lmv+1).
        #######################################################################
        
        lmv <- as.integer(log10( max_value ))
        to_value   <- 10^(lmv+1)
        
        
        #######################################################################
        # The by-value will be 1/10th of the to value which is equal to 10
        # raised to lmv.
        #######################################################################
        by_value  <- 10**lmv
        
        
        #######################################################################
        # The from value is zero
        #######################################################################
        
        from_value <- 0
        
        
        #######################################################################
        # We return a vector consisting of the from-value, the by-value, and
        # the to-value.
        #######################################################################
        
        seq( from = from_value, 
             by   =  by_value,
             to   = to_value  )
    }
        