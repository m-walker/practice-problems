# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.
require 'pry'

def dasherize_number(num)
  idx1 = 1
  idx2 = 0
  num_array = num.to_s.split("")

  while idx1 < num_array.length
    if num_array[idx2].to_i%2!=0 || num_array[idx1].to_i%2!=0
      num_array[idx2] = "#{num_array[idx2]}-"
    end
    idx1 += 1
    idx2 += 1
  end
  num_array.join("")
end


puts dasherize_number(203)
# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
