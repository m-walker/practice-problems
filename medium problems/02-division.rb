#Using the Ruby language, have the function Division(num1,num2) take both parameters being passed and return the Greatest Common Factor. That is, return the greatest number that evenly goes into both numbers with no remainder. For example: 12 and 16 both are divisible by 1, 2, and 4 so the output should be 4. The range for both parameters will be from 1 to 10^3. 


# Input:7 & num2 = 3
# Output:1

# Input:36 & num2 = 54
# Output:18

def Division(num1, num2)
	# start with the lowest number and then iterate one down from there until zero, and return the first number that
	# divides into both

	if num1 < num2
		greatest_common_factor = num1
	else
		greatest_common_factor = num2
	end

	while greatest_common_factor > 0
		if num1 % greatest_common_factor == 0 && num2 % greatest_common_factor == 0
			return greatest_common_factor
		end
		greatest_common_factor -= 1
	end
end

puts Division(7, 3)
puts Division(36, 54)
