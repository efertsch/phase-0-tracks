# Set up method skeleton
# Initialize real_name variable set to string 
# Find ruby method to swap first and last name of real_name string  
# Create alphabet variable and set to string
# Identify vowels (aeiou) in alphabet and create variable to store vowels in (split ->array?)
# Iterate through array and change all vowels to next vowel (using .next on vowel)
# Identify consonants and create variable to store consonants in ( split -> array?)
# Iterate through array and change all consonants to next consonants(using .next on consonants)

users_hash = {}

puts "Please enter your name:"
real_name = gets.chomp
real_name.to_sym
while real_name != "quit" 
		def alias_creator(name) 
			name_as_array = name.split(' ')
			reversed_name = name_as_array.sort { | x,y | y <=> x }
			swapped_name = reversed_name.map! { |name| name.swapcase.reverse }
			joined_name = swapped_name.join(' ')
		end 
	alias_creator(real_name)	
	fake_name = alias_creator(real_name)
	p "Your fake name is #{alias_creator(real_name)}!"
	users_hash[real_name] = fake_name
	puts "Please enter another name:"
	real_name = gets.chomp
end 

p users_hash
users_hash.each do |real, fake|
	puts "#{real} is also known as #{fake}, can you believe it?"
end 


#Look at vowel and find current location of vowel
#Add 1 to current location of vowel to get next location
# Go to next location to get next vowel_letter


# p vowel_finder('a')
# p vowel_finder('e')

