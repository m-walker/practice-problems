# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.
require 'pry'

def nearby_az(string)
  idx = 0
  idx_a = nil
  idx_z = nil
  within_3 = false

  while idx < string.length
    if string[idx] == "a"
      idx_a = idx
    end
    if string[idx] == "z"
      idx_z = idx
    end
    idx += 1
  end

  if idx_z - idx_a == 1 || idx_z - idx_a == 2 || idx_z - idx_a == 3
    within_3 = true
  end

  within_3
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nearby_az("baz") == true: ' + (nearby_az('baz') == true).to_s)
puts('nearby_az("abz") == true: ' + (nearby_az('abz') == true).to_s)
puts('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true).to_s)
puts('nearby_az("a") == false: ' + (nearby_az('a') == false).to_s)
puts('nearby_az("z") == false: ' + (nearby_az('z') == false).to_s)
puts('nearby_az("za") == false: ' + (nearby_az('za') == false).to_s)
