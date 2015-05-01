##
# Exercise 2
# What will the following programs return? What is value of arr after each?
# 1. arr = ["b", "a"]
#    arr = arr.product(Array(1..3))
#    arr.first.delete(arr.first.last)
# 2. arr = ["b", "a"]
#    arr = arr.product([Array(1..3)])
#    arr.first.delete(arr.first.last)
##

# 1
puts "returns 1"
puts "arr becomes [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]"

# 2
puts "returns [1, 2, 3]"
puts "arr becomes [["b"], ["a", [1, 2, 3]]]"