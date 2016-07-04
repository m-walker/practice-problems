# Problem 7
# =========


#    By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
#    that the 6th prime is 13.

#    What is the 10 001st prime number?

# Pseudocode
# figure out if a number is prime
# if that number is prime, add to the count
# when that count equals the parameter given, return the last number in the collection

  def NthPrime(nth)
    first_nth_primes(nth).last
  end

  def is_prime?(number)
    n = number - 1

    while n > 1
      if number % n == 0
        return false
      end
      n -= 1
    end
    true
  end

  def first_nth_primes(nth)
    primes = []
    potentially_prime = 2

    until primes.size == nth
      if is_prime?(potentially_prime)
        primes << potentially_prime
      end
      potentially_prime += 1
    end
    primes
  end

  puts NthPrime(10001)



