# Set up method skeleton
# Initialize real_name variable set to string 
# Find ruby method to swap first and last name of real_name string  
# Create alphabet variable and set to string
# Identify vowels (aeiou) in alphabet and create variable to store vowels in (split ->array?)
# Iterate through array and change all vowels to next vowel (using .next on vowel)
# Identify consonants and create variable to store consonants in ( split -> array?)
# Iterate through array and change all consonants to next consonants(using .next on consonants)


def alias_creator(name) 
	name_as_array = name.split(" ")
	reversed_name = name_as_array.sort {|a,b| b <=> a }
	reversed_name.join(" ")
	# index = 0
	# while index < reversed_name.length
	# 	p reversed_name[index]
	# 	index+=1
	# 	reversed_name.each do |letter|

	# 	end 
	# end 
end 

p alias_creator("Felicia Torres")



# def vowel_finder(name)
# 	vowels = ["a","e","i","o","u"]
# 	index = 0
# 	while index < name.length 
# 		name[index] == vowels[index]
# 		name[index] << vowels[index]
# 		index +=1
# 	end 

# end 

# p vowel_finder("Felicia Torres")