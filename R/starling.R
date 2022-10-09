starling <- function(x,
                     left,
                     right = left,
                     join = list) join(left(x),right(x))


starling_desc <- ' Description:
 The starling combinator takes one data argument and
 preprocesses it in two functions. It then feeds the result
 of the function to a join function. Its one-symbol name is Џ.

   x                    x
   │                    │
   ▼                    ▼
 left(x)              right(x)
   │                    │
   └─►join(left,right)◄─┘  '


#' starling combinator
#' @export
starling <- new_combinator(starling,print_desc = starling_desc) # bird name


#' starling combinator one-symbol name curry style
#' @export
Џ <- new_combinator(\(left) \(right) \(join) \(x) join(left(x),right(x)), print_desc = starling_desc)



#' starling combinator infix name
#' @export
`%Џ%` <- new_combinator(\(lhs,rhs){
  starling <- \(join) \(right) \(left) \(x) join(left(x),right(x))
  starling(rhs[[3]])(rhs[[2]])(rhs[[1]])(lhs)
},print_desc = starling_desc)
















#
##test
#1:10 |> Џ(left = sum,right = length, join = \(sum_res,length_res) sum_res/length_res)
## Extend this to be a print method for the respective combinator
#
#Џ <- \(x) \(left) \(right) \(join) join(left(x),right(x)) # manually curried version
#Џ(1:10)(sum)(length)(\(sum_res,length_res) sum_res/length_res)# -> difference in how functions are called
#
#`%Џ%` <- \(lhs,rhs){
#  starling <- \(join) \(right) \(left) \(x) join(left(x),right(x))
#  starling(rhs[[3]])(rhs[[2]])(rhs[[1]])(lhs)
#}
#
#1:10 %Џ% list(sum,length,\(sum_res,length_res) sum_res/length_res)
#
#
