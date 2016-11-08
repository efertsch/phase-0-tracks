
def create_list(input_string)
	grocery_list = {}
	list_array = input_string.split(' ')
	list_array.each do |list_item|
		grocery_list[list_item] = 1
	end
	print_list(grocery_list) 
end 


def add_item(item_name, list, quantity=1)
	list[item_name] = quantity
	return list 
end 


def delete_item(item_name, list)
	list.delete(item_name)
	return list
end 


def update_quantity(item_name, new_quantity, list)
	list[item_name] = new_quantity
	return list 
end


def print_list(list)
	puts "Here is your grocery list:"
	puts "_" * 15
	list.each do |item,quantity|
		puts "#{item}:  #{quantity}"
	end 
end 


# DRIVER CODE 
new_grocery_list = create_list("carrots apples cereal pizza")
puts add_item("ice cream", new_grocery_list, 50)
puts add_item("honey", new_grocery_list)
puts delete_item("apples", new_grocery_list)
puts update_quantity("ice cream", 100, new_grocery_list)




# REFLECTION
# I learned how to better configure my psuedocode to reflect plain english
	# It also led me to think more constructively about input/output 
# Hashes are better suited for storing associative data, whereas arrays are better for use with single items 
# A method will implicitly return whatever the last line of the method evaluates to unless an explicit return is stated
# Methods can be passed variables, data structures, primitive data types, and even other methods!
# Information can be passed between methods by assigning output to intermediate variables and passing the variable to another method
# I feel as though I learned a lot about the importance of explicit returns
	# Not too much is unclear at this point, it served as a great way to solidify the concepts as a repeat student!





# PSEUDOCODE
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split string of items into an array
  # for each item in the array, add it to our hash and assign default quantity 
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: item name, list to add to, and optional quantity
# steps: add item as key and quantity as value to list 
# output: updated hash (list)

# Method to remove an item from the list
# input: item name and a list 
# steps: use a built in ruby method to remove the item (.delete)
# output: updated hash without removed item/quantity

# Method to update the quantity of an item
# input: item, new quantity, list
# steps: reassign new quantity to exisiting key
# output: updated hash with altered quantity

# Method to print a list and make it look pretty
# input: list 
# steps: iterate over hash and print out each key value pair
# output: no output, just displaying pretty printed hash to console
