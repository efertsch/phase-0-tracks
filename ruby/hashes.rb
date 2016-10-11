# Create Client_Info Empty Hash 

Client_Info = {}

# Add UI to collect client infomation
# Add user input as key value pairs 
# Convert user input to appropriate data type
puts "Hello, and welcome to client services!"
puts "We look forward to working with you and your space."

puts 

puts "Please provide your full name:"
client_name = gets.chomp.downcase 
Client_Info[:client_name] = client_name
# p client_name 

puts "Please enter your age:"
client_age = gets.to_i
Client_Info[:client_age] = client_age
# p client_age 

puts "How many children do you have?"
number_of_children = gets.to_i
Client_Info[:number_of_children] = number_of_children
# p number_of_children

puts "What is your desired Decor Theme?"
decor_theme = gets.chomp.downcase
Client_Info[:decor_theme] = decor_theme
# p decor_theme

puts "What type of unit do you currently reside in?"
unit_type = gets.chomp.downcase
Client_Info[:unit_type] = unit_type
# p unit_type 

puts "Do you have any pets? Please answer 'yes' or 'no'"
has_pets = gets.chomp.downcase
if has_pets == "yes"
	has_pets = true 
else 
	has_pets = false
end 
Client_Info[:has_pets] = has_pets 
# p pets 



# Print hash when client has answered all questions 
p Client_Info 


# Give the user the opportunity to update a key - if "none" skip 
# If user wishes to make change, ask for new value and update the key
puts "Is there any information you would like to update?"
user_input = gets.chomp.downcase
if user_input == "none"
	puts "Thank you for your entry, now let's design your dream home!"
elsif user_input == "yes"
	puts
	puts "What piece of information would you like to update?"
	puts
	puts "Here are your options:"
	puts "Your name (type 'name')"
	puts "Your age (type 'age')"
	puts "The number of children you have (type 'n_kids')"
	puts "Your desired deocration theme (type 'theme')"
	puts "The type of unit you live in (type 'unit')"
	puts "Whether or not you have pets (type 'pets')"
	info_to_update = gets.chomp.downcase 
else
	puts "Please type 'yes' or 'none'"
end 

	if info_to_update == "name"
		puts "Please enter your updated name infomation:"
		updated_info = gets.chomp.downcase
		Client_Info[:client_name] = updated_info 
	elsif info_to_update == "age"
		puts "Please enter your updated age infomation:"
		updated_info = gets.to_i
		Client_Info[:client_age] = updated_info
	elsif info_to_update == "n_kids"
		puts "Please enter your updated children infomation:"
		updated_info = gets.to_i
		Client_Info[:number_of_children] = updated_info
	elsif info_to_update == "theme"
		puts "Please enter your updated decoration theme infomation:"
		updated_info = gets.chomp.downcase
		Client_Info[:decor_theme] = updated_info
	elsif info_to_update == "unit"
		puts "Please enter your updated unit type infomation:"
		updated_info = gets.chomp.downcase
		Client_Info[:unit_type] = updated_info
	elsif info_to_update == "pets"
		puts "Please enter your updated pet infomation:"
		updated_info = gets.chomp.downcase
		if updated_info == "yes"
			updated_info = true 
		else 
			updated_info = false
		end 
		Client_Info[:has_pets] = updated_info
	else
		puts "Thank you for your entry, now let's design your dream home!"
	end 

# Print latest version of the hash 

puts "Here is your updated information:"
puts 
p Client_Info

# Exit the program
puts 
puts "Thank you for your entry, now let's design your dream home!"




#Test whether successful, functional hash can be written 
# Client_Info = {
# 	client_name: "", 
# 	client_age: 40,
# 	number_of_children: "",
# 	decor_theme: "",
# 	unit_type: "", 
# 	pets: true
# }
# p Client_Info

