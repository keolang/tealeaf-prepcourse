##
# Exercise 6
# Given the array...
#
# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#          'flow', 'neon']
#
# Write a program that prints out groups of words that are anagrams. Anagrams are words that have the same exact letters 
# in them but in a different order. Your output should look something like this:
#
# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)
##

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
anagram_group = {}
words.each do |word|
  # splits each word to their individual letters, puts each word in alphabetical order and joins each word together again.
  key = word.split('').sort.join
  if anagram_group.has_key?(key)
    # If we find the key word in the hash, add the original word to the end of the key's value array.
    anagram_group[key].push(word)
  else
    # If we don't find the key word, add it as a key. Add the word as the first value in the array.
    anagram_group[key] = [word]
  end

end 

anagram_group.each { |key, value| puts "#{key} => #{value}" }