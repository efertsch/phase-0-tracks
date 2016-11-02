client_information = {}

puts "Please provide your full name:"
client_name = gets.chomp
client_information[:name] = client_name 

puts "Please provide your age:"
client_age = gets.to_i
client_information[:age] = client_age 

puts "How many children do you have?"
client_children = gets.to_i
client_information[:children] = client_children 

puts "Do you have pets?:"
client_pets = gets.chomp
if client.pets == 'yes'
	true 
else 
	false 
end 
client_information[:has_pets] = client.pets 

puts "Please choose a theme:"
client_theme = gets.chomp
client_information[:theme] = client_theme































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
