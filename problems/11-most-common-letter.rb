# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
  idx1 = 0
  idx2 = 0
  current_letter_count = 0
  highest_letter_count = 0
  most_common_letter = nil

  while idx1 < string.length
    current_letter = string[idx1]

    while idx2 < string.length
      if string[idx2] == current_letter
        current_letter_count += 1
      end
      idx2 += 1
    end

    if current_letter_count > highest_letter_count
      most_common_letter = current_letter
      highest_letter_count = current_letter_count
    end

    current_letter_count = 0
    idx1 += 1
    idx2 = idx1
  end

  [most_common_letter, highest_letter_count]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
