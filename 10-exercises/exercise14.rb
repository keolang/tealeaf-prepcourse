##
# Exercise 14
# In exercise 12, we manually set the contacts hash values one by one. Now, programmatically loop or 
# iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. 
# Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be 
# the Array shift and first methods.
# 
# Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:
# 
# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}}
##

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
keys = [:email, :address, :phone]

contacts.each do |data, hash|
  keys.each do |key|
    hash[key] = contact_data.shift
  end
end

p contacts

# As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.

contact_data_2 = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts_2 = {"Joe Smith" => {}, "Sally Johnson" => {}}
keys_2 = [:email, :address, :phone]

contacts_2.each_with_index do |(name, hash), index|
  keys_2.each do |keys_2|
    hash[keys_2] = contact_data_2[index].shift
  end
end

p contacts_2