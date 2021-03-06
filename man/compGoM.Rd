% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compGoM.R
\name{compGoM}
\alias{compGoM}
\title{compGoM: compare GoM model fits through log-likelihood, BIC and null loglikelihood}
\usage{
compGoM(data, model_output)
}
\arguments{
\item{data}{matrix on which GoM model is fitted (samples along rows, genes along columns)}

\item{model_output}{\code{FitGoM} output (a \code{list}).}
}
\value{
compGoM_models a vector of GoM model fit BIC, loglikelihood and null model loglikelihood for each model in FiGoM model input.
}
\description{
This function takes the \code{FitGoM} output model fits
             and compute log likelihood, BIC and null model loglikelihood for the GoM models.
}
\examples{

read.data <- function() {
  x <- tempfile()
  download.file(paste0("https://cdn.rawgit.com/kkdey/",
                         "singleCellRNASeqMouseDeng2014",
                         "/master/data/Deng2014MouseEsc.rda"),
                destfile = x, quiet = TRUE)
  z <- get(load((x)))
  return(z)
  }
Deng2014MouseESC <-read.data()

# Extract observed counts
deng.counts <- Biobase::exprs(Deng2014MouseESC)

# Import GoM fitting results
data("MouseDeng2014.FitGoM")
names(MouseDeng2014.FitGoM)

compGoM(data = t(deng.counts),
           model_output = MouseDeng2014.FitGoM)
}
\keyword{GoM,}
\keyword{fit}
\keyword{model}

