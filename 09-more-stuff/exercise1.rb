##
# Exercise 1
# Write a program that checks if the sequence of characters "lab" exists in the following strings. 
# If it does exist, print out the word.
#
# "laboratory"
# "experiment"
# "Pans Labyrinth"
# "elaborate"
# "polar bear"
##

def sequence_of_characters(word)
  if /lab/ =~ word
    puts word
  else
    puts "Nope!!!"
  end
end

sequence_of_characters("laboratory")
sequence_of_characters("experiment")
sequence_of_characters("Pans Labyrinth")
sequence_of_characters("elaborate")
sequence_of_characters("polar bear")
