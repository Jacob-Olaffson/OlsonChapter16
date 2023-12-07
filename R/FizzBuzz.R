#' It fizzez and buzzez baybee
#'
#' Takes in a vector of numbers and returns a modified vector
#' that has 'fizz' wherever the input integer is divisible by 3
#' and 'buzz' wherever divisible by 5. it'll fizz AND buzz (wow) if
#' the input is divisible by both
#'
#' @param n a vector of integers
#' @return Modified 'fizz buzz' vector
#' @examples
#' FizzBuzz(c(1,2,3,4,5,6,7))
#' FizzBuzz(my_fav_vector)
#' @export
FizzBuzz <- function(n) {
  output <- n
  for(i in 1:length(n)) {
    if(n[i] < 0) {
      stop('Stop givin negative inputs')
    }
    if(n[i] == 0) {
      stop('dont give me zero!')
    }
    if(is.infinite(n[i])) {
      stop('I cannot comprehend infinity')
    }
    if(n[i] %% 5 == 0 & n[i] %% 3 == 0) {
      output[i] <- "Fizz Buzz"
    }
    else if(n[i] %% 5 ==0) {
      output[i] <- "Buzz"
    }
    else if(n[i] %% 3 ==0) {
      output[i] <- "Fizz"
    }
  }
  return(output)
}
