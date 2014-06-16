### R code from vignette source 'GetoptLong.Rnw'

###################################################
### code chunk number 1: GetoptLong.Rnw:39-47 (eval = FALSE)
###################################################
## library(GetoptLong)
## 
## cutoff = 0.05
## GetoptLong(matrix(c(
##     "number=i", "Number of items, integer, mandatory option",
##     "cutoff=f", "cutoff to filter results, optional, default (0.05)",
##     "verbose",  "print messages"
## ), ncol = 2, byrow = TRUE))


###################################################
### code chunk number 2: GetoptLong.Rnw:52-60 (eval = FALSE)
###################################################
## library(GetoptLong)
## 
## cutoff = 0.05
## GetoptLong(c(
##     "number=i", "Number of items, integer, mandatory option",
##     "cutoff=f", "cutoff to filter results, optional, default (0.05)",
##     "verbose",  "print messages"
## ))


###################################################
### code chunk number 3: GetoptLong.Rnw:69-72
###################################################
cat("Rscript test.R --number 4 --cutoff 0.01 --verbose
Rscript test.R -n 4 -c 0.01 -v
Rscript test.R -n 4 --verbose")


###################################################
### code chunk number 4: GetoptLong.Rnw:84-85
###################################################
cat("length|size|l=i@")


###################################################
### code chunk number 5: GetoptLong.Rnw:96-100
###################################################
cat("Rscript foo.R --length 1
Rscript foo.R -len 1
Rscript foo.R --size 1
Rscript foo.R -l 1")


###################################################
### code chunk number 6: GetoptLong.Rnw:219-229 (eval = FALSE)
###################################################
## options('GetoptLong.startingMsg' = '
## Usage: Rscript test.R [options]
## An example to show how to use the packages
## ')
## 
## options('GetoptLong.endingMsg' = '
## Please contact author@gmail.com for comments
## ')
## VERSION = "0.0.1"
## GetoptLong(...)


###################################################
### code chunk number 7: GetoptLong.Rnw:234-253
###################################################
cat("
$~\\> Rscript command.R --help

Usage: Rscript test.R [options]
An example to show how to use the packages

  --tag integer
    this is a description of tag which is long long and very long and extremly
    long...

  --help
    Print help message and exit

  --version
    Print version information and exit


Please contact author@gmail.com for comments
")


###################################################
### code chunk number 8: GetoptLong.Rnw:258-262
###################################################
cat("
$~\\> Rscript command.R --version
0.0.1
")


###################################################
### code chunk number 9: GetoptLong.Rnw:269-271 (eval = FALSE)
###################################################
## options("GetoptLong.Config" = "bundling")
## options("GetoptLong.Config" = c("no_ignore_case", "bundling"))


###################################################
### code chunk number 10: GetoptLong.Rnw:276-279
###################################################
cat("-a -b -c  -abc
-s 24 -s24 -s=24
")


###################################################
### code chunk number 11: GetoptLong.Rnw:289-290
###################################################
cat("Rscript test.R -a -b -c -- /your/perl/bin/perl")


