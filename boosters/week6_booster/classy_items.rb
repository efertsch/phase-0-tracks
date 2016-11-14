class Items 

	attr_reader :name, :color, :price 

	def initialize(name, color, price)
		@name = name
		@price = price
		@color = color
	end 

	def to_s
		puts "A #{@color} #{@name} that cost #{@price} cents"
	end 

end 











# DRIVER CODE 
# item = Items.new("lamp", "beige", 100)
# item.to_s

# item2 = Items.new("sofa", "green", 10000)
# item2.to_s






















# PSEUDOCODE: ITEMS CLASS
		# Attributes:
			# name
			# color
			# price
		# Methods:
			# getters for color, price, name
			# to_s override 