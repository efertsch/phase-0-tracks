def sf_giants 
	puts "Let's go Giants!"
	yield("Even Year!","Giants never say die!")
end
sf_giants { |chant_1, chant_2| puts "#{chant_1}\n #{chant_2}" }


#Make an array
grocery_list = ["bananas", "chicken", "milk", "cereal"]
new_list = []

#Print before modification
p grocery_list
p new_list 

#Iterate over array with .each 
grocery_list.each do |food_item|
new_list << food_item.upcase  
end 

#Print after modification
p grocery_list
p new_list

#Iterate over array with .map!
p grocery_list 
grocery_list.map! do |food_item|
food_item.capitalize    
end 

#Print after modification
p grocery_list


#Iterate over items and delete any that meet a certain condition
p grocery_list 

grocery_list.delete_if { |food_item| food_item == "Milk" }

p grocery_list 


#Iterate over items and filter a data structure for only items that satisfy a certain condition
p grocery_list 

grocery_list.keep_if { |food_item| food_item == "Bananas" }

p grocery_list

#Iterate over items and filter in a DIFFERENT way

p grocery_list 

grocery_list.select! { |food_item| food_item == "Chicken" }

p grocery_list

#Iterate over array and delete items until condition evaulates to false
grocery_list = ["bananas", "chicken", "milk", "cereal"]

p grocery_list

filtered_list = grocery_list.drop_while { |food_item| food_item != "cereal" }

p filtered_list
p grocery_list



#Make a hash
car_hash = {
	ford: "focus",
	subaru: "outback",
	honda: "civic",
	toyota: "prius"
}
#print hash
p car_hash

#Iterate over hash with .each 
car_hash.each do |car, model|
	puts "My favorite #{car} is the #{model}!"
end 


#Iterate over items and delete any that meet a certain condition
p car_hash 

car_hash.delete_if { |car,model| car == :ford }

p car_hash


#Iterate over items and filter a data structure for only items that satisfy a certain condition

p car_hash 

car_hash.keep_if { |car,model| car == :subaru }

p car_hash


#Iterate over items and filter in a DIFFERENT way
p car_hash 

car_hash.select! { |car,model| car == :toyota }

p car_hash

#Iterate over array and delete items until condition evaulates to false
car_hash = {
	ford: "focus",
	subaru: "outback",
	honda: "civic",
	toyota: "prius"
}
new_car_list = {}

p car_hash 

new_car_list = car_hash.drop_while { |car,model| car != :subaru }

p new_car_list




