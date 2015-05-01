##
# Exercise 3
# Use the each_with_index method to iterate through an array of your creation 
# that prints each index and value of the array
##

ballers = ["Stephen Curry",
           "James Harden",
           "LeBron James",
           "Anthony Davis",
           "Chris Paul"]
           
ballers.each_with_index do |baller, index|
  puts "#{index}. #{baller}"
end