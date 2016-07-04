# Using the Ruby language, have the function PrimeMover(num) return the numth prime number. The range will be from 1 to 10^4. For example: if num is 16 the output should be 53 as 53 is the 16th prime number. 

# Input:9
# Output:23

# Input:100
# Output:541

def PrimeMover(num)
	rolling_through = 1
	count = 0

	until count == num
		rolling_through += 1

		if is_prime?(rolling_through)
			count += 1
		end
	end

	return rolling_through
end

def is_prime?(number)
  if number <= 1
    # only numbers > 1 can be prime.
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end

  return true
end

puts PrimeMover(100)