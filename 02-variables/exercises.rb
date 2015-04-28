##
# Exercise 5 
# Look at the following programs...
# 
# x = 0
# 3.times do
#   x += 1
# end
# puts x
#
# and ...
# 
# y = 0
# 3.times do
#   y+= 1
#   x = y
# end
# puts x
# 
# What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?
##

puts "======================================================"
puts "======================================================"
puts "Exercise 5"
puts "======================================================"
puts "======================================================"
puts "Program 1 prints 3 to the screen."
puts "Program 2 throws a NameError error message. x is not availabe outside the block it was initialized in."


##
# Exercise 6
# What does the following error message tell you?
# NameError: undefined local variable or method `shoes' for main:Object
#  from (irb):3
#  from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
##

puts "======================================================"
puts "======================================================"
puts "Exercise 6"
puts "======================================================"
puts "======================================================"
puts "The variable 'shoes' is not available outside of the scope it was initialized"
