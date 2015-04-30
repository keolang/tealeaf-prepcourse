##
# Exercise 2
#  Write a method that takes a string as argument. The method should return the all-caps version 
#  of the string, only if the string is longer than 10 characters. Example: change "hi there" to "HI THERE".
##

def capitalize_or_not(string)
  if string.length > 10
    string.upcase
  else
    string
  end
end

puts capitalize_or_not("Capitalize or not capitalized")
puts capitalize_or_not("hi there")