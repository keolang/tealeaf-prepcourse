##
# Exercise 4 
# What will each block of code below print to the screen? 
# Write your answer on a piece of paper or in a text editor 
# and then run each block of code to see if you were correct.
#
# 1. '4' == 4 ? puts("TRUE") : puts("FALSE")
# 
# 2. x = 2
#    if ((x * 3) / 2) == (4 + 4 - x - 3)
#      puts "Did you get it right?"
#    else
#      puts "Did you?"
#    end
# 
# 3. y = 9
#    x = 10
#    if (x + 1) <= (y)
#      puts "Alright."
#    elsif (x + 1) >= (y)
#      puts "Alright now!"
#    elsif (y + 1) == x
#      puts "ALRIGHT NOW!"
#    else
#      puts "Alrighty!"
#    end
##

# This will return FALSE because it's comparing different types
'4' == 4 ? puts("TRUE") : puts("FALSE")


# This will return 'Did you get it right?' because the results of the comparison is true
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end


# This will return 'Alright now!' because it's the first expression to evaluate to true
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end
