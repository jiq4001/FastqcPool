\name{plotpool_error}
\alias{plotpool_error}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot error bar plot of the Per base Quality Score in ggplot with color and size coding.
}
\description{
This function plot error bar plot of the Per base Quality Score in ggplot with color and size coding.
}
\usage{
plotpool_error(dataframe, col, panel)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dataframe}{
datafame from the read_in() or read_one() output, optional with index column expanded with idx_gen()
}
  \item{col}{
graph option: colored by levels of index column, default(col = NULL)
}
  \item{panel}{
graph option: faced option by levels of index column, default(panel = NULL)
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
graph of error plot
}
\examples{
\dontrun{
plot(dataframe)
}

}
