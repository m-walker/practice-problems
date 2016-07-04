# Using the Ruby language, have the function HammingDistance(strArr) take the array of strings stored in strArr, which will 
# only contain two strings of equal length and return the Hamming distance between them. The Hamming distance is the number 
# of positions where the corresponding characters are different. For example: if strArr is ["coder", "codec"] then your program 
# should return 1. The string will always be of equal length and will only contain lowercase characters from the alphabet and 
# numbers. 

# Input:"10011", "10100"
# Output:3

# Input:"helloworld", "worldhello"
# Output:8


def HammingDistance(strArr)
  # iterate through a string and compare each index to the same index in the other string. If they're not the same, add to the count
  count = 0
  string_index = 0

  while string_index < strArr[0].size	
  	if strArr[0][string_index] != strArr[1][string_index]
  		count += 1
  	end
  	string_index += 1
  end

  count
end

#puts HammingDistance(["10011", "10100"])
#puts HammingDistance(["helloworld", "worldhello"])

require 'pry'
def RectangleArea(strArr)

  # calculate the width and height
  rectangle_width_coordinates = []
  rectangle_height_coordinates = []
  
  strArr.each do |set_of_coordinates|
      rectangle_width_coordinates << set_of_coordinates[0]
      rectangle_height_coordinates << set_of_coordinates[1]
  end
  binding.pry
  rectangle_width_coordinates.uniq!
  width = (rectangle_width_coordinates[0].to_i - rectangle_width_coordinates[1].to_i).abs
  
  rectangle_height_coordinates.uniq!
  height = (rectangle_height_coordinates[0].to_i - rectangle_height_coordinates[1].to_i).abs
  binding.pry
  # multiply them together
  width * height
  
end