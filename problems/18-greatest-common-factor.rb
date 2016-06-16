# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)
  sorted_array = [number1, number2].sort
  count = number1
  array_number1 = []

  while count > 0
    if number1 % count == 0
      array_number1 << count
    end
    count -= 1
  end

  array_number1.each do |number|
    if number2 % number == 0
      return number
    end
  end

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'greatest_common_factor(3, 9) == 3: ' +
  (greatest_common_factor(3, 9) == 3).to_s
)
puts(
  'greatest_common_factor(16, 24) == 8: ' +
  (greatest_common_factor(16, 24) == 8).to_s
)
puts(
  'greatest_common_factor(3, 5) == 1: ' +
  (greatest_common_factor(3, 5) == 1).to_s
)
