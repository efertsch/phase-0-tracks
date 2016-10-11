# Create Client_Info Empty Hash 

Client_Info = {}

# Add UI to collect client infomation
# Add user input as key value pairs 
# Convert user input to appropriate data type
puts "Hello, and welcome to client services!"
puts "We look forward to working with you and your space."

puts 

puts "Please provide your full name:"
client_name = gets.chomp 
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
decor_theme = gets.chomp
Client_Info[:decor_theme] = decor_theme
# p decor_theme

puts "What type of unit do you currently reside in?"
unit_type = gets.chomp
Client_Info[:unit_type] = unit_type
# p unit_type 

puts "Do you have any pets? Please answer 'yes' or 'no'"
pets = gets.chomp
Client_Info[:pets] = pets 
# p pets 


# Print hash when client has answered all questions 
p Client_Info 

puts "Thank you for your entry, now let's design your dream home!"

puts "Is there any information you would like to update?"
update_info = gets.chomp



#Test whether successful, functional hash can be written 
# Client_Info = {
# 	client_name: "", 
# 	client_age: 40,
# 	number_of_children: "",
# 	decor_theme: "",
# 	unit_type: "", 
# 	pets: true
# }





# Give the user the opportunity to update a key - if "none" skip 
# If user wishes to make change, ask for new value and update the key
# Print latest version of the hash 
# Exit the program

