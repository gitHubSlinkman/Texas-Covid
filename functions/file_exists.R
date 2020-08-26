# files_exists.R

file_exists <- 
    function( file_name )
    {
        
        #######################################################################
        # Build file path to to the location where the file should be if it 
        # exists.
        #######################################################################
       
        wd <- getwd()
         fp <- file.path( wd, 
                          "data",
                           file_name )
       
       ########################################################################
       # Check for the existence of the file 
       ########################################################################
         
       file.exists( fp )
    }
    
       
    
