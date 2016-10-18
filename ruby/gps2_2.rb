# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:  
  # Break string up into an array using SPLIT
  # interate over the array and use EACH
  # Store split string in variable
  # Create empty hash 
  # Access array items and add them to the hash as keys 
  # set default quantity of keys to 1
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
 # Add an item to the hash hash[key] = value
# output:
 # an updated hash
 # Print list to console
# Method to remove an item from the list
# input: Most recent version of hash
# steps:
 # Remove an item from the list using a built in method
# output:
 # List with item deleted
# Method to update the quantity of an item
# input: Most updated version of our hash
# steps:
 # Access hash item by key and change value/quantity
# output:
 	# Print hash to console making sure its updated with the quantity 
# Method to print a list and make it look pretty
# input: Most updated hash
# steps:
 # at the end write driver code to print the hash to console
# output:
 # Printed user-friendly key value pairs




def list_creator(string)
	grocery_list = {}
	string_as_array = string.split(' ')
	string_as_array.each do |item|
		grocery_list[item] = 1
	end
grocery_list 
end 

# puts list_creator('carrots apples cereal pizza')

grocery_list = {}

def add_item_to_list(item,quantity,list)
	list[item] = quantity
end 

puts add_item_to_list("ham", 2, grocery_list)
puts add_item_to_list("tuna", 1, grocery_list)
puts grocery_list

def delete_item(item,list)
	list.delete_if{|item, quantity| item == item}
end 

puts delete_item("ham", grocery_list)


def change_quantity(item,new_quantity,list)
	list[item] = new_quantity
end 

puts change_quantity("tuna", 4, grocery_list)
puts grocery_list

def print_list(hash)
	puts "Here is your grocery list:"
	hash.each {|item,quantity| puts "#{item} = #{quantity}."}
end 

print_list(grocery_list)














# Go back and add pass print method to other methods 
