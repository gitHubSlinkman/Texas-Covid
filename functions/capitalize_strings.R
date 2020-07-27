# capitalize_strings.R

capitalize_strings <- 
    function( strings ){ 
        
        #######################################################################
        # Determine the length of the vnames vector of strings
        #######################################################################
        
        l <- length(strings )
        
        
        #######################################################################
        # Iterate  through all the words.
        #######################################################################
        
        for( i in 1:l ){
            

            ###################################################################
            # Partition in the first letter and the renmaining letters.
            ###################################################################
            
            first_letter      <- str_sub( strings[i], 1, 1 )        
            remaining_letters <- str_sub( strings[i], 2 )
            
            
            ###################################################################
            # Capitalize the first letter and concatenate it to the 
            # remaining_letters with no spaces
            ###################################################################
            
            capital_letter <-str_to_upper( first_letter )
            strings[i] <- paste0( capital_letter, remaining_letters )
            
            } # End of loop
        
            
            ###################################################################
            # Return strings
            ###################################################################
        
            strings
    }