#Initial pseudocode 
# Set up method skeleton
# Initialize real_name variable set to string 
# Find ruby method to swap first and last name of real_name string  
# Create vowel variable and set to string
# Iterate through array and change all vowels to next vowel (using .next on vowel)
# Identify consonants and create variable to store consonants in ( split -> array?)
# Iterate through array and change all consonants to next consonants(using .next on consonants)



#Unable to complete all aspects of challenge
# This program takes user input, swaps the first and last name, reverses the lettering and uses swapcase method
# Stores in user data as key/value pairs in hash 
# Loop program until user types quit
# Prints statement using interpolation to describe real and fake names

def alias_creator(name) 
	name_as_array = name.split(' ')
	reversed_name = name_as_array.sort { | x,y | y <=> x }
	swapped_name = reversed_name.map! { |name| name.swapcase.reverse }
	joined_name = swapped_name.join(' ')
end 

users_hash = {}
puts "Please enter your name:"
real_name = gets.chomp
real_name.to_sym
while real_name != "quit" 
	alias_creator(real_name)	
	fake_name = alias_creator(real_name)
	users_hash[real_name] = fake_name
	puts "Please enter another name:"
	real_name = gets.chomp
end 

p users_hash

users_hash.each do |real, fake|
	puts "#{real} is also known as #{fake}, can you believe it?"
end 


# -----------------------------------------------------------

#All code from here down was an attempt to get the more difficult version of the assignment 
#performed but I did not have enough time to get the code working properly. 

# ------------------------------------------------------------

# Finds index of vowel in vowels string and move to next vowel
# Next step would have been to account for edge cases
# def next_vowel(v_letter)
# 	vowels = 'aeiou'
# 	index_of_letter = vowels.index(v_letter.downcase)
# 	succ_vowel = index_of_letter + 1
# 	vowels[succ_vowel]
# end 

# p next_vowel('o')
# p next_vowel('e')


# Finds index of consonants in vowels string and move to next consonsant
# Next step would have been to account for edge cases
# def next_consonant(c_letter)
# 	consonants = 'bcdfghjklmnpqrstvwxyz'
# 	index_of_c_letter = consonants.index(c_letter.downcase)
# 	succ_consonant = index_of_c_letter + 1
# 	consonants[succ_consonant]
# end 

# p next_consonant('m')
# p next_consonant('g')


#Combine alias_creator method with consonant and vowel finding methods 
# def alias_creator(name) 
# 	name_as_array = name.split(' ')
# 	reversed_name = name_as_array.sort { | x,y | y <=> x }
# 	joined_name = reversed_name.join(' ')
#  	individual_chars = joined_name.split('')
# 	if 'aeiou'.include?(individual_chars)
# 		joined_name.map! do |char|
# 		next_vowel(char)
# 		end 
# 	elsif joined_name.include?('bcdfghjklmnpqrstvwxyz')
# 		joined_name.map! do |char|
# 		next_consonant(char)
# 		end 
# 	else 
# 		nil 
# 	end 
# 	joined_name
# end  

# p alias_creator("Ethan Fertsch") 







