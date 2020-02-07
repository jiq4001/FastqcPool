\name{idx_gen}
\alias{idx_gen}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Expand key columns from user specified sample_id input
}
\description{
An optional function that expands key columns from user specified sample_id input
}
\usage{
idx_gen(dataframe, sep = "_", col.names = c("Sample", "Biorep", "Techrep"))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dataframe}{
dataframe from Read_one() or Read_in() return
}
  \item{sep}{
field seperater used in user specified string input for renaming the sample_id, default is(sep = "_").
}
  \item{col.names}{
field names used in user specified string input for renaming the sample_id, default it (col.names = c("Sample", "Biorep", "Techrep"))
}
}
\details{
the function use tidyr::separate to separate the "sample_id" column from the Read_in() output dataframe to user specified columns(field name should be seperated by *sep = "user spedified delim"*)
}
\value{
dataframe with expanded key columns in replace of sample_id
}
\references{
%% ~put references to the literature/web site here ~
}

\examples{
\dontrun{
idx_gen(combined_df, sep = "_", col.names = c("Sample", "Biorep", "Techrep"))
}
}
