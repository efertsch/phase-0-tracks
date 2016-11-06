def name_swap(name)
	split_name = name.downcase.split(' ')
	reversed_name = [split_name[1], split_name[0]]
	reversed_name_string = reversed_name.join(' ') 
	reversed_name_string
end

# p name_swap('Ethan Fertsch')



def find_next_vowel(letter)
	vowels = 'aeiou'
	vowels_array = vowels.split('')
	vowels_array.each do |vowel|
		if letter == vowel
			next_vowel_index = vowels_array.index(vowel) + 1
			next_vowel = vowels_array[next_vowel_index]
			return next_vowel
		elsif letter == 'u'
			return 'a'
		# else
		# 	return letter
		end 
	end
end 

p find_next_vowel('a')


def find_next_consonant(letter)
	consonants = 'bcdfghjklmnpqrstvwxyz'
	consonants_array = consonants.split('')
	consonants_array.each do |consonant|
		if letter == consonant
			next_consonant_index = consonants_array.index(consonant) + 1
			next_consonant = consonants_array[next_consonant_index]
			return next_consonant
		elsif letter == 'z'
			return 'b'
		# else 
		# 	return letter
		end 
	end
end 

p find_next_consonant('c')







swapped_name = name_swap('Felicia Torres')
swapped_name_array = swapped_name.split('')
vowels = 'aeiou'.split('')
consonants = 'bcdfghjklmnpqrstvwxyz'.split('')
corrected_name = []
for letter in swapped_name_array
	if vowels.include? letter
		corrected_name << find_next_vowel(letter)
	elsif consonants.include? letter
		corrected_name << find_next_consonant(letter)
	end 
end 

	
p corrected_name.join('')





#PSEUDOCODE
# Define a method that takes a name as a parameter
# Within the method:
	# Split the string into an array 
	# Swap the first and last names by storing the names in a new array
	# Join the array back into a string and downcase the name 

#Define a method that takes a vowel letter as a parameter
#Within the method:
	# Define a variable that contains a string of all vowels
	# split the vowels string to an array 
	# Loop through the array and compare the letter to each character in the array
	# If the letter is a vowel, return the next vowel in the array
	# If the letter is not a vowel, return the letter as is.

#Define a method that takes a consonant letter as a parameter
#Within the method:
	# Define a variable that contains a string of all consonants
	# split the consonants string to an array 
	# Loop through the array and compare the consonant letter to each character in the array
	# If the letter is a consonant, return the next consonant in the array
	# If the letter is not a consonant, return the letter as is.

#Using the logic from the vowel and consonant methods above
	# Create a method that takes the name variable from the name swap method (a name string)
	# Change all of the consonant letters in the string to the next consonant 
	# And all of the vowel letters in the string to the next vowel 
	# Return the cryptic name string 

# Add a UI that lets a user provide a name and the program will return the fake name
# Loop through and let the user enter as many names as they want until they quit by typing 'quit'
# Store the fake names in a hash 
# When the user is done, print the hash containing the fake names 

	
