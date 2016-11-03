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
Your desired decorative theme is: #{client_theme}.\n"


p client_information

puts "Do you have any information you would like to update?"
user_answer = gets.chomp
if user_answer == 'none'
	puts "Okay, let's build your dream home!"
elsif user_answer == 'yes'
	puts "Please choose a field to update:"
	field_to_update = gets.chomp
	case field_to_update
		when "first_name" 
			first_name_sym = "first_name".to_sym
			client_information[:first_name] == client_information[first_name_sym]
			puts "Please enter a new value:"
			updated_value = gets.chomp
			client_information[first_name_sym] = updated_value
		when "last_name" 
			last_name_sym = "last_name".to_sym
			client_information[:last_name] == client_information[last_name_sym]
			puts "Please enter a new value:"
			updated_value = gets.chomp
			client_information[last_name_sym] = updated_value
		when "age" 
			age_sym = "age".to_sym
			client_information[:age] == client_information[age_sym]
			puts "Please enter a new value:"
			updated_value = gets.to_i
			client_information[age_sym] = updated_value
		when "children" 
			children_sym = "children".to_sym
			client_information[:children] == client_information[children_sym]
			puts "Please enter a new value:"
			updated_value = gets.to_i
			client_information[children_sym] = updated_value
		when "has_pets" 
			pets_sym = "has_pets".to_sym
			client_information[:has_pets] == client_information[pets_sym]
			puts "Please enter a new value:"
			updated_value = gets.chomp
			client_information[pets_sym] = updated_value
		when "theme" 
			theme_sym = "theme".to_sym
			client_information[:theme] == client_information[theme_sym]
			puts "Please enter a new value:"
			updated_value = gets.chomp
			client_information[theme_sym] = updated_value
		end

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
