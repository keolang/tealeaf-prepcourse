##
# Exercise 7
# Given the following code...
#
# x = "hi there"
# my_hash = {x: "some value"}
# my_hash2 = {x => "some value"}
#
# What's the difference between the two hashes that were created?
##

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

p "my_hash uses a symbol as the key"
p "my_hash2 uses a string as the key"