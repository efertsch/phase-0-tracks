def sf_giants 
	puts "Let's go Giants!"
	yield("Even Year!","Giants never say die!")
end
# sf_giants { |chant_1, chant_2| puts "#{chant_1}\n #{chant_2}" }



#Make an array
grocery_list = ["bananas", "chicken", "milk", "cereal"]
new_list = []

p grocery_list
p new_list 

#Iterate over array with .each 
grocery_list.each do |food_item|
new_list << food_item.upcase  
end 

p grocery_list
p new_list

#Iterate over array with .map!
grocery_list.map! do |food_item|
food_item.capitalize    
end 

p grocery_list


#Make a hash
car_hash = {
	ford: "focus",
	subaru: "outback",
	honda: "civic",
	toyota: "prius"
}
p car_hash

#Iterate over hash with .each 
