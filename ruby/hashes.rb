# Create Client_Info Empty Hash 

Client_Info = {}

# Add UI to collect client infomation
puts "Hello, and welcome to client services!"
puts "We look forward to working with you and your space."

puts 

puts "Please provide your full name:"
client_name = gets.chomp
client_name.to_sym
# p client_name 

puts "Please enter your age:"
client_age = gets.chomp
client_age.to_sym 
# p client_age 

puts "How many children do you have?"
number_of_children = gets.chomp
number_of_children.to_sym 
# p number_of_children

puts "What is your desired Decor Theme?"
decor_theme = gets.chomp
decor_theme.to_sym 
# p decor_theme

puts "What type of unit do you currently reside in?"
unit_type = gets.chomp
unit_type.to_sym 
# p unit_type 

puts "Do you have any pets? Please answer 'yes' or 'no'"
pets = gets.chomp
pets.to_sym 
# p pets 

puts "Thank you for your entry, now let's design your dream home!"





Client_Info = {
	client_name: "", 
	client_age: 40,
	number_of_children: "",
	decor_theme: "",
	unit_type: "", 
	pets: true
}

#Test for hash functionality with empty strings, boolean, and integer

p Client_Info 


# Convert user input to appropriate data type
# Print hash when client has answered all questions 
# Give the user the opportunity to update a key - if "none" skip 
# If user wishes to make change, ask for new value and update the key
# Print latest version of the hash 
# Exit the program

