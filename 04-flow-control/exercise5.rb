##
# Exercise 5
# Rewrite your program from exercise 3 using a case statement. Wrap each statement 
# in a method and make sure they both still work.
##

def number_checker(number)
  if number < 0
    puts "You entered a negative number"
  elsif number <= 50
    puts "#{number} is between 0 and 50"
  elsif number <= 100
    puts "#{number} is between 50 and 100"
  else 
    puts "#{number} is above 100"
  end
end

def number_checker_case(number)
  case
  when number < 0
    puts "You entered a negative number"
  when number <= 50
    puts "#{number} is between 0 and 50"
  when number <= 100
    puts "#{number} is between 50 and 100"
  else
    puts "#{number} is above 100"
  end
end

puts "Enter a number between 0 and 100"
num = gets.chomp.to_i

number_checker(num)
number_checker_case(num)
