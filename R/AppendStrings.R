`+` <- function(e1, e2){
  if(is.character(e1)){
    appendString(e1, e2)}
  else 
    .Primitive("+")(e1, e2)
}

appendString(e1, e2){
  paste0(e1, e2)
}
