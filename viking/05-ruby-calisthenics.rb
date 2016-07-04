# Ruby Calisthenics

# It's important that you're able to turn a logical problem into a code solution. In some form or another, this comes up frequently when you're building features with code. It's also a ripe target for interview questions...

# 1. Power

# Write a method power which takes two integers (base and exponent) and returns the base raised to the power of exponent. Do not use Ruby’s ** operator for this!

# > power(3,4)
# => 81 # (3*3*3*3)

def Power(num1, num2)
	product = []

	num2.times do
		product << num1
	end

	product.inject("*")
end

# 2. Factorial

# Write a method factorial which takes a number and returns the product of every number up to the current number multiplied together.

# > factorial(5)
# => 120  # from 1*2*3*4*5
def Factorial(num)
current = num
product = 1

	while current > 0
		product = product * current
		current -= 1
	end
	product
end

puts Factorial(5)

# 3. Uniques

# Write a method uniques which takes an array of items and returns the array without any duplicates. Don’t use Ruby’s uniq method!

# uniques([1,5,”frog”, 2,1,3,”frog”])
# => [1,5,”frog”,2,3]

def Uniques(array)
	
end
# 4. Combinations

# Write a method combinations which takes two arrays of strings and returns an array with all of the combinations of the items in them, listing the first items first.

# > combinations([“on”,”in”],[“to”,”rope”])
# => [“onto”,”onrope”,”into”,”inrope”]
# 5. Primes

# Write a method is_prime? which takes in a number and returns true if it is a prime number.

# > is_prime?(7)
# => true
# > is_prime?(14)
# => false
# 6. Rectangle Overlap

# Write a method overlap which takes two rectangles defined by the coordinates of their corners, e.g. [[0,0],[3,3]] and [[1,1],[4,6]], and determines whether they overlap. You can assume all coordinates are positive integers.

# > overlap( [ [0,0],[3,3] ], [ [1,1],[4,5] ] )
# => true
# > overlap( [ [0,0],[1,4] ], [ [1,1],[3,2] ] )
# => false
# It doesn't count as overlapping if their edges touch but they do not otherwise overwrite each other. As expressed by a sixth grade student:

# coordinate overlaps

# A Bigger Challenge: The Counting Game

# Let's take on a more challenging logic problem. Remember the counting game that you pseudocoded during the Pseudocoding Assignment? For a recap:

# 10 friends are sitting in a circle around a table and decide to play a new game. In it, they count up through the numbers from 1 to 100. The first person says "1", the second says "2" and so on... but with a few catches:

# Whenever the number is divisible by 7, they switch directions. So person 6 will say "6", person 7 will say "7", then person 6 again will say "8".
# Whenever the number is divisible by 11, they skip the next person for the following number. For instance, if person 3 says "33", person 5 will say "34" instead (person 4 gets skipped).
# Your job is to code a program which outputs each number and which person said it. Use it to show that player 1 will say the number "100".

# Tips:

# Remember to stick with brute force instead of trying to "figure out" the trick to the problem.
# Name your variables well!
# Ignore the skipping to start out with. Only add it when you're ready.
# Advanced Option:

# Make your method take two inputs -- the number of players and the number you're counting up to. Then see who says the last number each time!
# Finishing Up

# Commit everything and push your project to your Github fork (e.g. with $ git push origin master)
# Open up a pull request with the main project repo you originally forked from. This allows us to see that you've completed the assignment and make comments on your solution.
# Keep solving problems with Ruby :)