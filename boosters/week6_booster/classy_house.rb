class House 
end 
























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
	# ROOM CLASS
		# Attributes:
			# name
			# width
			# length
			# items (collection of items instances)
		# Methods 
			# getters for items, name, width, length
			# setter for items, name
			# total value 
			# to_s override
	# ITEMS CLASS
		# Attributes:
			# name
			# color
			# price
		# Methods:
			# getters for color, price, name
			# to_s override 
