test__file_exists.R

library(tidyverse)
library(lubridate)


source('D:/R-Projects/TexasCovid/functions/build_date_file_name.R')
source('D:/R-Projects/TexasCovid/functions/file_exists.R')

###############################################################################
# We build a data frame and store a dataframe in the data sub-folder so we
# can test the file_exists function.
###############################################################################

l  <-  sample( letters, 100, replace=TRUE)
gpa <- rnorm( 100, mean= 2.50, sd = 0.50 )

df <- data.frame( l, gpa )

file_date <- ymd(20010129)
file_name <- build_date_file_name( file_date )

fp <- file.path( getwd(),
                 "data",
                 file_name )

write.csv( df, fp )

###############################################################################
# We test for the existance of the file we just created.
###############################################################################

file_exists( fp )

###############################################################################
# We delete the file and then test for its rxistence.
###############################################################################

file.remove( fp )
file_exists( fp )
