##
# Exercise 6
# You run the following code...
#
# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'
# ...and get the following error message:
#
# TypeError: no implicit conversion of String into Integer
#  from (irb):2:in `[]='
#  from (irb):2
#  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'
# What is the problem and how can it be fixed?
##

# you are setting the value of the array item using a string. you need to use an integer.
# below is the fix
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
puts names