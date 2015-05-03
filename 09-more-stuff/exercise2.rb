##
# Exercise 2
# # What will the following program print to the screen? What will it return?
#
# def execute(&block)
#   block
# end
# 
# execute { puts "Hello from inside the execute method!" }
##

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

puts "The block is not called and the program prints nothing to the screen but returns a proc object."