# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.
require 'pry'

def two_sum(nums)
  idx1 = 0
  idx2 = 0
  solution_array = []

  while idx1 < nums.length
    
    while idx2 < nums.length
      if nums[idx1] + nums[idx2] == 0
        solution_array << idx1
        solution_array << idx2
        return solution_array
      end
      idx2 += 1
    end
    idx2 = 0
    idx1 += 1
  end
  return nil
end


puts two_sum([1, 3, 5, -3])
# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
