##
# Exercise 3
# Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. 
# Then write a program that does the same thing except printing the values. Finally, write a program that prints both.
##

player = {name: "Joe Blow", height: "6 ft", weight: "185 lbs", position: "Guard"}

player.each_key { |key| puts key }
player.each_value { |value| puts value }
player.each { |key, value| puts "#{key} is #{value}" }