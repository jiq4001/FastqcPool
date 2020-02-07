read_one <- function(filepath, test = "Per base sequence quality", rename = filepath){
  syscommand <- paste0("unzip -p ", filepath, " \\*/fastqc_data.txt | sed -n -e '/", test, "/,/>>END_MODULE/p' | grep -v '>>'")
  out <- data.table::fread( cmd = syscommand, header = TRUE) %>% as.data.frame
  sample_id <- rep(rename, nrow(out))
  out <- cbind.data.frame(sample_id, out)
  return(out)
}
