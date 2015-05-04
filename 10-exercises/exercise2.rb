##
# Exercise 2
# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], but only print out values greater than 5.
##

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.each do |number|
  if number > 5
    puts  number
  end
end
