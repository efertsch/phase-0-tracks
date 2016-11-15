require_relative 'classy_rooms'
require_relative 'classy_items'

class House 

	attr_reader :rooms

	def initialize
		@rooms = []
	end 

	def add_room(room)
		if rooms.length < 11
			@rooms << room 
			true 
		else
			false  
		end 
	end 


	def total_value
	end 


	def to_s
		house_str = ""
		@rooms.each do |room|
			house_str << room.to_s
			house_str << "\n\n"
			room.items.each do |item|
				house_str << item.to_s
				house_str << "\n"
			end
			house_str << "\n" 
		end
			house_str 
	end





end 











#DRIVER CODE 


house = House.new

living_room = Rooms.new("living room", 20, 20)
sofa = Items.new("Sofa", "Green", 15000)
lamp = Items.new("lamp", "beige", 100)
living_room.items << sofa
living_room.items << lamp
 

kitchen = Rooms.new("Kitchen", 15, 20)
sink = Items.new("sink", "white", 500)
oven = Items.new("oven", "black", 1000)
kitchen.items << sink
kitchen.items << oven 


house.add_room(living_room)
house.add_room(kitchen)

puts house

# SKILLS DEMONSTRATED
	# Defining classes
	# Setting instance attributes
	# Using attr_accessor and attr_reader
	# Writing instance methods
	# Spreading classes across multiple files (relatively new concept)

#PSEDUDOCODE: BUILD A HOUSE OUT OF CLASSES
	# HOUSE CLASS
		# Attributes: 
			#rooms (collection of rooms instances)
		# Methods:
			# getter for rooms 
			# add_room (up to 10)
			# square_footage (adds up house square footage)
			# total value of house
			# to_s overrride 
	
