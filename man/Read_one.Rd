\name{Read_one}
\alias{Read_one}

\title{
Extract the base quality score from "fastqc_data.txt" in a standard FastQC output zip output to a R dataframe
}
\description{
This function extract the base quality score from "fastqc_data.txt" in a standard FastQC output zip output to a R dataframe
}
\usage{
Read_one(filepath, test, rename)
}

\arguments{
  \item{filepath}{
  a string input that specifies the path to an individual FastQC zip output. (typically in "fastqc.zip" format)
}
  \item{test}{
  a string Indicate which test results should be extracted. Default: "Per base sequence quality".
  Other options are: for example, "Per tile sequence quality", "Per sequence quality score" etc.
}
  \item{rename}{
  a string that offers the option to rename the SampleID, which presents as the key column in the output dataframe. (defalt is same as the filepath input)
}
}
\details{
excute linux command: unzip -p ERR458493_fastqc.zip \*/fastqc_data.txt | sed -n -e "13,/>>END_MODULE/p" | grep -v '>>' with fread(cmd = syscommand)
}
\value{
  a dataframe with the value of a single FastQC test result
}

\examples{
\dontrun{
res <- read_one(filepath)
}
}

