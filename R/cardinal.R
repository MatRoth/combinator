cardinal <- function(x,a,b,c){
  a(c(x))(b(x)) # a must be a function returning a function
}
#cardinal(1,`+`,`+`,`+`)
