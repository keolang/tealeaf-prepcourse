##
# Exercise 5
# What method could you use to find out if a Hash contains a specific value in it? 
# Write a program to demonstrate this use.
##

animals = {mammal: "Lion", reptile: "Alligator", bird: "Eagle", amphibian: "Frog"}

if animals.has_value?("Lion")
  puts "has value"
else
  puts "does not have value"
end