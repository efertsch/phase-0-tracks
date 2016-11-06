#### SKILLS COVERED ####
########################

# Iterating through and modifying an array
# Iterating through and modifying a hash
# Working with nested data structure
# While loops and control flow
# Thinking carefully about return values: 
	# complex data type (structures) likely to be changed inside and outside method scope 
	# primitive data types (bool, int) unlikely to be changed outside of the method scope (explicit return required)
# Testing a program with automatic user input 
# Writing destructive vs. nondestructive methods


house = {}

def add_room_to_house(house, room_name)
	if house.keys.length == 5
		return false
	else 
		house[room_name] = []
		true
	end 
end 

def add_item(house, room_name, item_name)
	house[room_name] << item_name
end 



#USER INTERFACE

def print_house(house)
	puts "Current house configuration:"
	puts "_" * 10
	house.keys.each_with_index do |room_name, index|
		puts "#{index} - #{room_name}: #{house[room_name]}"
	end
	puts "_" * 10 
end 



can_add_rooms = true

while can_add_rooms	  
	puts "Type the name of a room to add (or type 'done'):"
	room_to_add = gets.chomp
	break if room_to_add == "done"
	can_add_rooms = add_room_to_house(house, room_to_add)
	print_house(house)
end 


loop do
	puts "Which room number would you like to add items to?" 
	inputted_index = gets.chomp
	break if inputted_index == "done"
	room_index = inputted_index.to_i
	puts "What item would you like to add?" 
	item_to_add = gets.chomp
	add_item(house, house.keys[room_index], item_to_add)
	print_house(house)
end 



# TEST CODE
# rooms = ["living room", "bedroom", "bathroom", "kitchen", "bedroom 2"]

# rooms.each do |room|
# 	add_room_to_house(house, room)
# 	add_item(house, room, "cat")
# end 

# print_house(house) 














# PSEUDOCODE
# Allow user to create a house
# Add rooms
# Add items 

# House can have up to 5 rooms 
# Room can have an unlimited number of items 