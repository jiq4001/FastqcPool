\name{combined_df.RData}
\alias{combined_df.RData}
\docType{data}
\title{
The combined data.frame from the output of Read_in()
}
\description{
The combined data.frame from the output of Read_in() using the zip files in _/extdata_
}
\usage{data("combined_df.RData")}
\format{
  A data frame with 204 observations on the following 10 variables.
}
\details{
dataframe with column names: "sample_id", "#Base", "Mean", "Median", "Lower Quartile", "Upper Quartile", "10th Percentile", "90th Percentile"
}

\examples{
\dontrun{
data(combined_df.RData)
readRDS(combined_df.RData)
}
}
\keyword{combined_df.RData}
