# Set up method skeleton
# Initialize real_name variable set to string 
# Find ruby method to swap first and last name of real_name string  
# Create alphabet variable and set to string
# Identify vowels (aeiou) in alphabet and create variable to store vowels in (split ->array?)
# Iterate through array and change all vowels to next vowel (using .next on vowel)
# Identify consonants and create variable to store consonants in ( split -> array?)
# Iterate through array and change all consonants to next consonants(using .next on consonants)


def alias_creator(name) 
	name_as_array = name.split(' ')
	reversed_name = name_as_array.sort { | x,y | y <=> x }
	swapped_name = reversed_name.map! { |name| name.swapcase.reverse }
	joined_name = swapped_name.join(' ')
end 

p alias_creator('Ethan Fertsch')



#Look at vowel and find current location of vowel
#Add 1 to current location of vowel to get next location
# Go to next location to get next vowel_letter


# p vowel_finder('a')
# p vowel_finder('e')
