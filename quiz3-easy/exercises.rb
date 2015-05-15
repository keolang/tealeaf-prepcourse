##
# Exercise 1
# how an easier way to write this array:
# 
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
##

puts "Exercise 1"
puts "-------------------------------------------------"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones

puts "================================================="
puts "================================================="

##
# Exercise 2
# How can we add the family pet "Dino" to our usual array:
# 
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
##

puts "Exercise 2"
puts "-------------------------------------------------"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"
p flintstones

puts "================================================="
puts "================================================="

##
# Exercise 3
# In the previous exercise we added Dino to our array like this:
# 
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"
# We could have used either Array#concat or Array#push to add Dino to the family.
# 
# How can we add multiple items to our array? (Dino and Hoppy)
##

puts "Exercise 3"
puts "-------------------------------------------------"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push("Dino").push("Hoppy")
p flintstones

puts "================================================="
puts "================================================="

##
# Exercise 4
# Shorten this sentence:
# 
# advice = "Few things in life are as important as house training your pet dinosaur."
# ...remove everything starting from "house".
##

puts "Exercise 4"
puts "-------------------------------------------------"

advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.slice!(0, advice.index('house'))

puts "================================================="
puts "================================================="

##
# Exercise 5
# Write a one-liner to count the number of lower-case 't' characters in the following string:
# 
# statement = "The Flintstones Rock!"
##

puts "Exercise 5"
puts "-------------------------------------------------"

statement = "The Flintstones Rock!"
puts statement.count("t")

puts "================================================="
puts "================================================="

##
# Exercise 6
# Back in the stone age (before CSS) we used spaces to align things on the screen. 
# If we had a 40 character wide table of Flintstone family members, how could we 
# easily center that title above the table with spaces?
# 
# title = "Flintstone Family Members"
##

puts "Exercise 6"
puts "-------------------------------------------------"

title = "Flintstone Family Members"
puts title.center(40)

puts "================================================="
puts "================================================="