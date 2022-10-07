
#' Blackbird combinator
#' @description
#'  x                  x
#'  │                  │
#'  ▼                  ▼
#' c(x)               d(x)
#'  │                  │
#'  └─►b(alpha,omega)◄─┘
#'            │
#'            ▼
#'         a(alpha)
#' @export
blackbird <- ? function(x,a = ? Function(),b = ? Function(),c = ? Function(),d = ? Function()){
  a(b(c(x),d(x)))
}

#test

#blackbird(1:100,a=\(x) mean(x),b=\(x,y) x/10+y,c=\(x) x+10,d = \(x) x+100)
# Extend this to be a print method for the respective combinator
cat(r"{
      x                  x
      │                  │
      ▼                  ▼
     c(x)               d(x)
      │                  │
      └─►b(alpha,omega)◄─┘
                │
                ▼
             a(alpha)}")
