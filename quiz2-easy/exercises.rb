##
# Exercise 1
# In this hash of people and their age, 
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 } 
# see if there is an age present for "Spot". 
# Bonus: What are three other hash methods that would work just as well for this solution?
##

puts "Exercise 1"
puts "-------------------------------------------------"

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
puts ages.fetch("Spot", "Spot isn't in this hash")

puts "-----BONUS-----"
puts ages.select { |k,v| k == "Spot" }
puts ages.has_key?("Spot")
puts ages.values_at("Spot")

puts "================================================="
puts "================================================="

##
# Exercise 2
# Add up all of the ages from our current Munster family hash:
#   ages = { "Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237 }
##

puts "Exercise 2"
puts "-------------------------------------------------"

ages = { "Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237 }

result = 0
ages.each_value {|value| result = result + value }
puts "The combined ages of the Munster family is #{result}"

puts "================================================="
puts "================================================="

##
# Exercise 3
# In the age hash:
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# throw out the really old people (age 100 or older).
##

puts "Exercise 3"
puts "-------------------------------------------------"

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
puts ages.select {|k,v| v < 100}

puts "================================================="
puts "================================================="

##
# Exercise 4
# Starting with this string:
# munsters_description = "The Munsters are creepy in a good way."
# Convert the string in the following ways (code will be executed on original munsters_description above):
# "The munsters are creepy in a good way."
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
##

puts "Exercise 4"
puts "-------------------------------------------------"

munsters_description = "The Munsters are creepy in a good way."
puts munsters_description.capitalize
puts munsters_description.swapcase
puts munsters_description.downcase
puts munsters_description.upcase

puts "================================================="
puts "================================================="

##
# Exercise 5
# We have most of the Munster family in our age hash:
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# add ages for Marilyn and Spot to the existing hash
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }
##

puts "Exercise 5"
puts "-------------------------------------------------"

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)
p ages

puts "================================================="
puts "================================================="

##
# Exercise 6
# Pick out the minimum age from our current Munster family hash:
# ages = { "Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237 }
##

puts "Exercise 6"
puts "-------------------------------------------------"

ages = { "Herman"=>32, "Lily"=>30, "Grandpa"=>5843, "Eddie"=>10, "Marilyn"=>22, "Spot"=>237 }
puts ages.values.sort.first


puts "================================================="
puts "================================================="

##
# Exercise 7
# See if the name "Dino" appears in the string below:
# advice = "Few things in life are as important as house training your pet dinosaur."
##

puts "Exercise 7"
puts "-------------------------------------------------"

advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.include?("Dino")

puts "================================================="
puts "================================================="

##
# Exercise 8
# In the array:
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be"
##

puts "Exercise 8"
puts "-------------------------------------------------"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts flintstones.index { |x| x.match("Be") }

puts "================================================="
puts "================================================="

##
# Exercise 9
# Using array#map!, shorten each of these names to just 3 characters:
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
##

puts "Exercise 9"
puts "-------------------------------------------------"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! { |x| x.slice(0,3) }
p flintstones

puts "================================================="
puts "================================================="

##
# Exercise 10
# Again, shorten each of these names to just 3 characters -- but this time do it all on one line:
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
##

puts "Exercise 10"
puts "-------------------------------------------------"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.map! { |x| x.slice(0,3) }

puts "================================================="
puts "================================================="