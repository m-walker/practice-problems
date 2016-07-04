# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def Contained_Multiples(num1, num2)
	product_collection = []
	num1_multiplier = 1
	num2_multiplier = 1

	#multiply  each by an increasing number until the product is larger than 1000
	#place each of those products into a product collection
	while num1 * num1_multiplier < 1000 
		product_collection << num1 * num1_multiplier
		num1_multiplier += 1
	end

	while num2 * num2_multiplier < 1000
		product_collection << num2 * num2_multiplier
		num2_multiplier += 1
	end
	
	#add each number in the product collection together to get a sum
	product_collection.inject("+")
end

puts Contained_Multiples(3,5)