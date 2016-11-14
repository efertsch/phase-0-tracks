require_relative 'classy_items'

class Rooms

	attr_reader :width, :length
	attr_accessor :items, :name


	def initialize(name, width, length)
		@name = name
		@width = width
		@length = length
		@items = []
	end

	def total_value
		total = 0
		@items.each do |item|
			total += item.price 
		end 
		total
	end

	def to_s
		puts "#{@name} (#{@width} x #{@length})"
	end  


end 



#DRIVER CODE 
living_room = Rooms.new("living room", 20, 20)
puts living_room
sofa = Items.new("Sofa", "Green", 15000)
lamp = Items.new("Lamp", "beige", 100)
living_room.items << sofa
living_room.items << lamp
puts living_room.total_value 




















# PSEUDOCODE: ROOM CLASS
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