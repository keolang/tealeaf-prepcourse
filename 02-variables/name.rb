##
# Exercise 1
# Write a program called name.rb that asks the user to type in their name 
# and then prints out a greeting message with their name included.
##

puts "======================================================"
puts "======================================================"
puts "Exercise 1"
puts "======================================================"
puts "======================================================"

puts "Please enter your name "
name = gets.chomp
puts "Welcome " + name + "! Thanks for coming."


##
# Exercise 3
# Add another section onto name.rb that prints the name of the user 10 times. 
# You must do this without explicitly writing the puts method 10 times in a row. 
# Hint: you can use the times method to do something repeatedly.
##

puts "======================================================"
puts "======================================================"
puts "Exercise 3"
puts "======================================================"
puts "======================================================"

10.times { puts name }


##
# Exercise 4
# Write a program called name.rb that asks the user to type in their name 
# and then prints out a greeting message with their name included.
##

puts "======================================================"
puts "======================================================"
puts "Exercise 4"
puts "======================================================"
puts "======================================================"

puts "Please enter your first name "
first_name = gets.chomp
puts "Please enter your last name "
last_name = gets.chomp
puts "Aloha " + first_name + " " + last_name
