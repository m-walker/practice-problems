#Using the Ruby language, have the function StringScramble(str1,str2) take both parameters being passed and return the string true if a portion of str1 characters can be rearranged to match str2, otherwise return the string false. For example: if str1 is "rkqodlw" and str2 is "world" the output should return true. Punctuation and symbols will not be entered with the parameters. 

# Sample Test Cases
# Input:"cdore" & str2= "coder"
# Output:"true"

# Input:"h3llko" & str2 = "hello"
# Output:"false"

def StringScramble(str1,str2)

  # does str1 contain every character in str2?

  # iterate through str2, and for each character, make sure that str1 contains it
  	# but also get rid of that character from str1 after it matches something from str2 in case there is a number that repeats

  str2.split("").each do |character|
  	if str1.include?(character)
  		str1.delete!(character)
  	else
  		return false
  	end
  end
  return true
end


puts StringScramble("cdore", "coder")
puts StringScramble("h3llko", "hello")