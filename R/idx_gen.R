idx_gen <- function(dataframe, sep = "_", col.names = c("Sample", "Biorep", "Techrep")){
  key.df <- tidyr::separate(dataframe, sample_id, into = col.names, sep = sep)
  if(sum(stats::complete.cases(key.df)) != nrow(dataframe)){
    stop("check error in rename vector")
  }
  else{
    return(key.df)
  }
}
