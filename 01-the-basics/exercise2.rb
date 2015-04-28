##
# Exercise 2 
# Use the modulo operator, division, or a combination of both to take a 4 digit number and find 
# 1) the thousands number 2) the hundreds 3) the tens and 4) and the ones.
##

number = 1234

# 1234/1000 is 1
thousands = number / 1000

# 1234 % 1000 is 234
# 234/100 is 2
hundreds = number % 1000 / 100

# 1234 % 1000 is 234
# 234 % 100 is 34 
# 34/10 is 3
tens = number % 1000 % 100 / 10

# 1234 % 1000 is 234
# 234 % 100 is 34 
# 34 % 10 is 4
ones = number % 1000 % 100 % 10 


puts thousands 
puts hundreds
puts tens
puts ones