read_in <- function(input, rename=input, test = "Per base sequence quality"){
  if (length(input) != length(rename)){
    stop("rename is required to have same length as input\n")
  }
  else if (length(unique(rename)) < length(rename)){
    warning("name list is not unique, check input or rename\n")
  }
  else{
    if(length(input) > 1){
      frame.list <- mapply(function(x,y) match.call(read_one, call("read_one", filepath = x, rename = y, test = test)), input, rename, USE.NAMES = F)
      out <- do.call(rbind.data.frame, frame.list)
    }
    else {
      out <- match.call(read_one, call("read_one", filepath=input, rename=rename, test = test))
    }
    return(out)
  }
}
