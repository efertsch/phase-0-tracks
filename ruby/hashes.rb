client_information = {}

puts "Please provide your first name:"
client_first_name = gets.chomp.capitalize
client_information[:first_name] = client_first_name 

puts "Please provide your last name:"
client_last_name = gets.chomp.capitalize
client_information[:last_name] = client_last_name 

puts "Please provide your age:"
client_age = gets.to_i
client_information[:age] = client_age 

puts "How many children do you have?"
client_children = gets.to_i
client_information[:children] = client_children 

puts "Do you have pets?:"
client_pets = gets.chomp.downcase
if client_pets == 'yes'
	client_pets = true 
else 
	client_pets = false 
end 
client_information[:has_pets] = client_pets 

puts "Please choose a theme:"
client_theme = gets.chomp.downcase
client_information[:theme] = client_theme


puts "\nLet's review your information:\n
Your name is: #{client_first_name} #{client_last_name}. 
You are: #{client_age} years old. 
You have: #{client_children} children.
You have pets: #{client_pets}.
Your desired decorative theme is: #{client_theme}.\n\n"


p client_information

puts "Do you have any information you would like to update?"
user_answer = gets.chomp
if user_answer == 'none'
	puts "Okay, let's build your dream home!"
elsif user_answer == 'yes'
	puts "Please choose a field to update:"
	field_to_update = gets.chomp
	update_field_sym = field_to_update.to_sym 
	puts "Please enter a new value:"
	updated_value = gets.chomp
	if (field_to_update == "has_pets") && (updated_value == "yes")
			updated_value = true 
	else 
		updated_value = false
	end
	client_information[update_field_sym] = updated_value
end 

p client_information







# PSEUDOCODE
# Create an empty hash 
# Add UI to prompt for details about a given client
# Store the input in a variable
# Assign the variable to a key in the hash
# Add the client information to the hash 
# Print the hash to the screen once the user has answered all questions
# Provide the user the opporunity to update a key 
# IF the user answer is "none", skip that section
# ELSE update the key to the new value 
# Print the new hash and exit the program 
