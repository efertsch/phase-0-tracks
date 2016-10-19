
def display_list(groceries)
	puts "Here is your grocery list:"
	groceries.each {|item,quantity| puts "#{item} = #{quantity}"}
end 

def generate_list(groceries)
	grocery_list = {}
	groceries_array = groceries.split(' ')
	groceries_array.each do |item|
		grocery_list[item] = 1
	end
	grocery_list
end 

def add_item_to_list(item, quantity, list)
	list[item] = quantity
	list 
end 

def delete_item(removed_item, list)
	list.delete_if{|item, quantity| item == removed_item}
	list
end 

def change_quantity(item,new_quantity,list)
	list[item] = new_quantity
	list 
end 
	

grocery_list = generate_list('carrots apples cereal pizza')
display_list(grocery_list)

add_item_to_list('Lemonade', 2, grocery_list) 
add_item_to_list('Tomatoes', 3, grocery_list) 
add_item_to_list('Onions', 1, grocery_list)
add_item_to_list('Ice Cream', 4, grocery_list)

delete_item('Lemonade', grocery_list)

change_quantity('Ice Cream', 1, grocery_list)

display_list(grocery_list)



# What did you learn about pseudocode from working on this challenge?
	# This challenge actually provided me with a lot of insight with regards to writing specific and effective pseudocode.
	# I was able to think through the process much faster using this format and was able to more easily visualize input and output. 

# What are the tradeoffs of using arrays and hashes for this challenge?
	# Hashes seem to be a bit more flexible in which an array is just a pre-cursor for a more detailed data structure (aka a hash).
	# Some of the array methods would have been a bit more cut and dry and in my opinion had that been the structure we used.

# What does a method return?
	#A method returns the value of the last line of code in the method, if you want the most recent or updated version of a parameter or value
	#You must return the parameter after the method has performed its task. 

# What kind of things can you pass into methods as arguments?
	#You can pass in different data types (strings, variables, integers) data structures(arrays, hashes), blocks, and even other methods! 

# How can you pass information between methods?
	# You can pass information between methods by passing in methods to other methods as parameters 
	#And by storing outputs of methods in variables and passing those to other methods.

# What concepts were solidified in this challenge, and what concepts are still confusing?
	# I definitely feel more comfortable writing methods and enforcing the separation of concerns whereas before I was a bit hazy. 
	# I still need some more practice with passing methods to methods in applied challenges (I got hung up for a bit)
	# I also need to work on not over thinking things so much, I keep getting lost for hours over simple details and it cuts into my time in other challenges. 




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

