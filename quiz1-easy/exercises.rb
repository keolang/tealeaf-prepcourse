##
# Exercise 1
# What would you expect the code below to print out?
# numbers = [1, 2, 2, 3]
# numbers.uniq
##

puts "Exercise 1"
puts "-------------------------------------------------"

numbers = [1, 2, 2, 3]
numbers.uniq

puts "It will print:"
puts numbers
puts "numbers.uniq returns a new Array with unique elements, but it does not modify the numbers object"
puts "================================================="
puts "================================================="

##
# Exercise 2
# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios: 
# 1. what is != and where should you use it?
# 2. put ! before something, like !user_name
# 3. put ! after something, like words.uniq!
# 4. put ? before something
# 5. put ? after something
# 6. put !! before something, like !!user_name
##

puts "Exercise 2"
puts "-------------------------------------------------"

puts "1. != is a comparison operator. Use it to compare conditionals that are not equal."
puts "2. ! is the 'not' operator. When you add this in front of a boolean expression it will change that boolean value to its opposite."
puts "3. ! at end of methed is 'the bang operator.' Usually indicates the method will mutate the caller."
puts "4. The Ternary operator uses ? and : to create a short conditional if statement."
puts "5. ? at end of methed returns true or false."
puts "6. !! is used to turn any object into their boolean equivalent."

puts "================================================="
puts "================================================="

##
# Exercise 3
# Replace the word "important" with "urgent" in this string:
# advice = "Few things in life are as important as house training your pet dinosaur."
##

puts "Exercise 3"
puts "-------------------------------------------------"

advice = "Few things in life are as important as house training your pet dinosaur."
p advice
advice.gsub!("important", "urgent")
p advice

puts "================================================="
puts "================================================="

##
# Exercise 4
# The Ruby Array class has several methods for removing items from the array. 
# Two of them have very similar names. Let's see how they differ:
#
# numbers = [1, 2, 3, 4, 5]
#
# What would the following return?
# 
# numbers.delete_at(1)
# numbers.delete(1)
##

puts "Exercise 4"
puts "-------------------------------------------------"

numbers = [1, 2, 3, 4, 5]
p numbers
numbers.delete_at(1)
p ".delete_at(1) returns #{numbers}"

numbers = [1, 2, 3, 4, 5]
p numbers
numbers.delete(1)
p ".delete(1) returns #{numbers}"

puts "================================================="
puts "================================================="

##
# Exercise 5
# Programmatically determine if 42 lies between 10 and 100.
# hint: Use Ruby's range object in your solution.
##

puts "Exercise 5"
puts "-------------------------------------------------"

puts (10..100).cover?(42)

puts "================================================="
puts "================================================="

##
# Exercise 6
# Starting with the string:
# famous_words = "and seven years ago..."
# show two different ways to put the expected "Four score and " in front of it.
##

puts "Exercise 6"
puts "-------------------------------------------------"

famous_words = "and seven years ago..."
famous_lines = "Four score and "

puts famous_lines + famous_words
puts famous_words.prepend(famous_lines)

puts "================================================="
puts "================================================="

##
# Exercise 7
# Fun with gsub:
# 
# def add_eight(number)
#   number + 8
# end
# 
# number = 2
# 
# how_deep = "number"
# 5.times { how_deep.gsub!("number", "add_eight(number)") }
# 
# p how_deep
# This gives us a string that looks like a "recursive" method call:
# 
# "add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"
# If we take advantage of Ruby's Kernel#eval method to have it execute this string as if it were a "recursive" method call
# 
# eval(how_deep)
# what will be the result?
##

puts "Exercise 7"
puts "-------------------------------------------------"

def add_eight(number)
  number + 8
end

number = 2

how_deep = "number"
5.times { how_deep.gsub!("number", "add_eight(number)") }

p how_deep

p eval(how_deep)

puts "================================================="
puts "================================================="

##
# Exercise 8
# If we build an array like this:
# 
# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]
# We will end up with this "nested" array:
# 
# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# Make this into an un-nested array.
##

puts "Exercise 8"
puts "-------------------------------------------------"

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

p flintstones
p flintstones.flatten!

puts "================================================="
puts "================================================="

##
# Exercise 9
# Given the hash below
# 
# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# Programmatically get an array with Barney's name and number
##

puts "Exercise 9"
puts "-------------------------------------------------"

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
rubbles = flintstones.select { |k,v| k == "Barney" }
p rubbles.to_a

puts "================================================="
puts "================================================="

##
# Exercise 10
# Given the array below
# 
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# Turn this array into a hash where the names are the keys and the values are the positions in the array.
##

puts "Exercise 10"
puts "-------------------------------------------------"

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}
flintstones.map.with_index do |name, index|
  flintstones_hash[name] = index
end

p flintstones_hash

puts "================================================="
puts "================================================="