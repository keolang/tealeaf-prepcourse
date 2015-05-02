##
# Exercise 2
# Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? 
# Write a program that uses both and illustrate the differences.
##

player = { name: "Joe Blow", height: "6 ft", weight: "185 lbs" }
position = { position: "Guard" }

player.merge(position)
puts player
puts position

player.merge!(position)
puts player
puts position


puts "merge is not destructive and returns a new hash but leaves the original hash unmodified"
puts "merge! is destructive and modifies the original hash"
