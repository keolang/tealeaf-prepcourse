##
# Excercise 1
# Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens). 
# For this exercise, write a one-line program that creates 10 lines of the following: 
# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!
##

puts "Exercise 1"
puts "-------------------------------------------------"

10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

puts "================================================="
puts "================================================="

##
# Exercise 2
# Create a hash that expresses the frequency with which each letter occurs in this string: 
# statement = "The Flintstones Rock" 
# ex: { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }
##

puts "Exercise 2"
puts "-------------------------------------------------"

statement = "The Flintstones Rock"

# splits the statement to their individual letters
letters = statement.split(%r{\s*})

frequency = {}
letters.each do |letter|
  key = letter
  if frequency.has_key?(key)
    # If we find the key letter in the hash, count the frequency of letter.
    frequency[key] = statement.scan(letter).count
  else
    # If we don't find the key letter, add it as a key. 
    frequency[key] = letter
    frequency[key] = letter.count(letter)
  end
end 

p frequency

puts "================================================="
puts "================================================="

##
# Exercise 3
# The result of the following statement will be an error: 
# puts "the value of 40 + 2 is " + (40 + 2) 
# Why is this and what are two possible ways to fix this?
##

puts "Exercise 3"
puts "-------------------------------------------------"

puts "You cannot convert String and Fixnum, TypeError."
puts "-----Possible Fixes-----"
puts "string interpolation"
puts "the value of 40 + 2 is #{40+2}"
puts "to_s"
puts "the value of 40 + 2 is " + (40 + 2).to_s

puts "================================================="
puts "================================================="

##
# Exercise 4
# What happens when we modify an array while we are iterating over it? 
# What would be output by this code? 
# numbers = [1, 2, 3, 4]
#     numbers.each do |number|
#        p number
#        numbers.shift(1)
#     end  
#     
# What would be output by this code? 
# numbers = [1, 2, 3, 4]
#     numbers.each do |number|
#        p number
#        numbers.pop(1)
#     end
##

puts "Exercise 4"
puts "-------------------------------------------------"

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

puts "The shft() method removes the n-th element and returns it. The iteration is causing shift to work on a changing array."
puts"----------------------------------"

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

puts "The pop() method removes the last element and returns it. The code prints 1, removes 4, prints 2, removes 3."

puts "================================================="
puts "================================================="

##
# Excercise 5
# Alan wrote the following method, which was intended to show all of the factors of the input number:
# 
# def factors(number)
#   dividend = number
#   divisors = []
#   begin
#     divisors << number / dividend if number % dividend == 0
#     dividend -= 1
#   end until dividend == 0
#   divisors
# end
#
# Alyssa noticed that this will fail if you call this with an input of 0 or a negative number and asked Alan to change the loop. 
# How can you change the loop construct (instead of using begin/end/until) to make this work?
# 
# Bonus 1
# 
# What is the purpose of the number % dividend == 0 ?
# 
# Bonus 2
# 
# What is the purpose of the second-to-last line in the method (the divisors before the method's end)?
##

puts "Exercise 5"
puts "-------------------------------------------------"

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

puts factors(9)

puts "-----Bonus 1-----"
puts "The modulo operator checks for remainders on a division operation. If number % dividend == 0 is true, the result is added."
puts "-----Bonus 2-----"
puts "divisors is what the factors method returns."

puts "================================================="
puts "================================================="

##
# Excercise 6
# Alyssa was asked to write an implementation of a rolling buffer. 
# Elements are added to the rolling buffer and if the buffer becomes full, 
# then new elements that are added will displace the oldest elements in the buffer.
# 
# She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". 
# Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?
# 
# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   buffer << new_element
#   buffer.shift if buffer.size >= max_buffer_size
#   buffer
# end
# 
# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size >= max_buffer_size
#   buffer
# end
##

puts "Exercise 6"
puts "-------------------------------------------------"

puts "Both methods return the same value. The shovel operator (<<) mutates the caller."

puts "================================================="
puts "================================================="

##
# Excercise 7
# Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator, 
# A user passes in two numbers, and the calculator will keep computing the sequence until some limit is reached.
# 
# Ben coded up this implementation but complained that as soon as he ran it, he got an error. 
# Something about the limit variable. What's wrong with the code?
# 
# limit = 15
# 
# def fib(first_num, second_num)
#   while second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end
# 
# result = fib(0, 1)
# puts "result is #{result}"
# How would you fix this so that it works?
##

puts "Exercise 7"
puts "-------------------------------------------------"

puts "limit was outside the scope of the fib method. I added it inside the method."

def fib(first_num, second_num)
  limit = 15
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

puts "================================================="
puts "================================================="

##
# Excercise 8
# In another example we used some built-in string methods to change the case of a string. 
# A notably missing method is something provided in Rails, but not in Ruby itself...titleize! 
# This method in Ruby on Rails creates a string that has each word capitalized as it would be in a title.
# 
# Write your own version of the rails titleize!
##

puts "Exercise 8"
puts "-------------------------------------------------"

def titleize(string)
  string.split(" ").map { |word| word.capitalize }.join(" ")
end

puts titleize("the best of tHE best.")

puts "================================================="
puts "================================================="

##
# Excercise 9
# Given the munsters hash below
# 
# munsters = { 
#   "Herman" => { "age" => 32, "gender" => "male" }, 
#   "Lily" => { "age" => 30, "gender" => "female" }, 
#   "Grandpa" => { "age" => 402, "gender" => "male" }, 
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
#
# Modify the hash such that each member of the Munster family has an additional "age_group" key 
# that has one of three values describing the age group the family member is in (kid, adult, or senior). 
# Your solution should produce the hash below
# 
# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
#
# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.
# 
# hint: try using a case statement along with Ruby Range objects in your solution
##

puts "Exercise 9"
puts "-------------------------------------------------"

munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key, value|
  case value["age"]
  when 0..17
    value["age_group"] = "kid"
  when 18..64
    value["age_group"] = "adult"
  else
    value["age_group"] = "senior"
  end
end

p munsters

puts "================================================="
puts "================================================="