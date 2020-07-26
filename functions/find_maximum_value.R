# find_maximum_value.R

#'Find_maximum_value
#'
#'The function find the maximum value in a data.frame for a specific variable.
#'This function supports the time series plotting.
#'
#' @param data is the data frame
#' @param variable is the column of the data.frame or tibble. it can be either 
#'        a numeric or character value.
#'
#' @return the maximum value.
#' @export
#'
#' @examples
find_maximum_value <- 
    function( data, variable )
    {   
        #############################################################
        # Extract the values from the data.frame or tibble.
        #############################################################
        
        values <- 
            texas %>%  pull( variable)
        
        #############################################################
        # If the value is not available replace the value with zero.
        #############################################################
        
        values <- ifelse( is.na( values), 0, values )
        
        
        #############################################################
        # Find the maximum value and return it.
        #############################################################
        
        max( values )
        
    }
