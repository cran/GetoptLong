\name{qq}
\alias{qq}
\title{
Simple variable interpolation in texts
}
\description{
Simple variable interpolation in texts
}
\usage{
qq(text, envir = parent.frame(), code.pattern = NULL, collapse = TRUE)
}
\arguments{

  \item{text}{text string in which variables are marked with certain rules}
  \item{envir}{environment where to find those variables. By default it is the environmentwhere \code{\link{qq}} is envoked. It can also be a list in which list element names arethe variable names going to be interpolated.}
  \item{code.pattern}{pattern of marks for the variables. By default it is \code{@\\\\{CODE\\\\}} which meansyou can write your variable as \code{@{variable}}.}
  \item{collapse}{If variables return vector of length larger than one, whether collapse into one stringor return a vector}

}
\details{
I like variable interpolation in Perl. But in R, if you want to concatenate plain text and variables,
you need to use functions such as \code{\link[base]{paste}}. However, if there are so many variables, quotes, braces 
in the string you want to construct, it would kill you.

This function allows you to construct strings as in Perl style. Variables are
marked in the text with certain rule. \code{\link{qq}} will look up these variables in user's
environment and replace the variable marks with their real values.

For more explaination of this function, please refer to vignette.
}
