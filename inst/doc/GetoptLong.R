## ----eval = FALSE, echo = TRUE-------------------------------------------
#  library(GetoptLong)
#  
#  cutoff = 0.05
#  GetoptLong(matrix(c(
#      "number=i", "Number of items, integer, mandatory option",
#      "cutoff=f", "cutoff to filter results, optional, default (0.05)",
#      "verbose",  "print messages"
#  ), ncol = 2, byrow = TRUE))

## ----eval = FALSE, echo = TRUE-------------------------------------------
#  library(GetoptLong)
#  
#  cutoff = 0.05
#  GetoptLong(c(
#      "number=i", "Number of items, integer, mandatory option",
#      "cutoff=f", "cutoff to filter results, optional, default (0.05)",
#      "verbose",  "print messages"
#  ))

## ----eval = FALSE, echo = TRUE-------------------------------------------
#  GetoptLong.options('startingMsg' = '
#  An example to show how to use the packages
#  ')
#  
#  GetoptLong.options('endingMsg' = '
#  Please contact author@gmail.com for comments
#  ')
#  VERSION = "0.0.1"
#  GetoptLong(...)

## ----eval = FALSE, echo = TRUE, include = FALSE--------------------------
#  GetoptLong.options("config" = "bundling")
#  GetoptLong.options("config" = c("no_ignore_case", "bundling"))

