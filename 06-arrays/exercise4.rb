##
# Exercise 4
# What does each method return in the following example?
# arr = [15, 7, 18, 5, 12, 8, 5, 1]
# 1. arr.index(5)
# 2. arr.index[5]
# 3. arr[5]
##

arr = [15, 7, 18, 5, 12, 8, 5, 1]

# 1. arr.index(5) returns 3 for the index number five is located
puts arr.index(5)

# 2. arr.index[5] returns an error
# NoMethodError: undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index>
#	from (irb):3
#	from /Users/local/.rvm/rubies/ruby-2.1.4/bin/irb:11:in `<main>'
puts "arr.index[5] give an error"

# 3. arr[5] returns 8 or being located at the fifth index
puts arr[5]