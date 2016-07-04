# Problem 6
# =========


#    The sum of the squares of the first ten natural numbers is,

#                           1^2 + 2^2 + ... + 10^2 = 385

#    The square of the sum of the first ten natural numbers is,

#                        (1 + 2 + ... + 10)^2 = 55^2 = 3025

#    Hence the difference between the sum of the squares of the first ten
#    natural numbers and the square of the sum is 3025 âˆ’ 385 = 2640.

#    Find the difference between the sum of the squares of the first one
#    hundred natural numbers and the square of the sum.



# Pseudocode

# square one to 100 individually
# add the products together

# add one to 100 together
# square the sum
  
# subtract the first result from second result


def NumberSquared(number)
  number * number
end

def ComparingOrder(upper_limit)
  n = 0
  sum_of_squares = 0
  sum = 0
  square_of_sum = 0
  difference = 0

  while n <= upper_limit
    sum_of_squares += NumberSquared(n)
    sum += n
    n += 1
  end
  square_of_sum = NumberSquared(sum)

  difference = square_of_sum - sum_of_squares
end

puts ComparingOrder()

   
#    Answer: 867380888952c39a131fe1d832246ecc