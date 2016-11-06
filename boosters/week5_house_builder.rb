#### SKILLS COVERED ####
########################

# Iterating through and modifying an array
# Iterating through and modifying a hash
# Working with nested data structure
# While loops and control flow
# Thinking carefully about return values
# Testing a program with automatic user input 
# Writing destructive vs. nondestructive methods


house = {}

def add_room_to_house(house, room_name)
	house[room_name] = []
end 


# TEST CODE
rooms = ["living room", "bedroom", "bathroom", "kitchen"]

rooms.each do |room|
	add_room_to_house(house, room)
end 

p house 














# PSEUDOCODE
# Allow user to create a house
# Add rooms
# Add items 

# House can have up to 5 rooms 
# Room can have an unlimited number of items 