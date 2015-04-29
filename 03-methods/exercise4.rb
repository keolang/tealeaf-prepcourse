##
# Exercise 4
# What will the following code print to the screen?
#
#  def scream(words)
#    words = words + "!!!!"
#    return
#    puts words
#  end
#
#  scream("Yippeee")
##

# scream prints nothing to the screen because return evaluates without executing the next line.
def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")