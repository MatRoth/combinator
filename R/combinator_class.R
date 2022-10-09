
new_combinator <- function(x,print_desc = "No description yet."){
  stopifnot(is.function(x))
  stopifnot(is.character(print_desc))

  structure(
    x,
    print_desc= print_desc,
    class = "combinator"
  )
}

is.combinator <- function(x){
  ifelse(class(x) == "combinator",T,F)
}

print.combinator <- function(x){
  cat(attributes(x)$"print_desc")
}
