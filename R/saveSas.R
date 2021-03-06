#' @title Export a time series to SAS
#' 
#' @description Writes a time series to a .sas (SAS) file.
#' 
#' @param code An \code{integer}. The unique identifier of the series within the BETS database. 
#' @param data A \code{data.frame} or a \code{ts}. Contains the data to be written. If \code{data} is supplied, the BETS database will not be searched. 
#' @param file.name A \code{character}. The name of the output file. The default is 'series.sas'.
#' 
#' @return None
#' 
#' @examples 
#' 
#'  #Exchange rate - Free - United States dollar (purchase)
#'  #us.brl <- get(3691)
#'  #require(seasonal)
#'  #us.brl.seasonally_adjusted <- seas(us.brl)
#'  #saveSas(data = us.brl.seasonally_adjusted,file.name="us.brl.seasonally_adjusted")
#'  # Or
#'  #saveSas(code=3691,file.name="us.brl")
#' 
#' @importFrom foreign write.foreign
#' @export 


saveSas=function(code = NULL, data = NULL, file.name="series"){
  
  ret = save(code, data, file.name, "sas")
  
  if(class(ret) == "list"){
    write.foreign(ret$data, datafile = ret$file, codefile = tempfile(), package="SAS")
  }
  
}


