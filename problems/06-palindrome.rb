# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.
require 'pry'

def palindrome?(string)
  idx = 0
  is_palindrome = true

  while idx < string.length
    if string[idx] != string[(string.length - (1+idx))]
      is_palindrome = false
      return is_palindrome
    end
      idx += 1
  end
  is_palindrome
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)
