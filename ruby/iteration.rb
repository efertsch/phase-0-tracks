def sf_giants 
	puts "Let's go Giants!"
	yield("Even Year!","Giants never say die!")
end

sf_giants { |chant_1, chant_2| puts "#{chant_1}\n #{chant_2}" }
#Make an array
grocery_list = ["bananas", "chicken", "milk", "cereal"]
p grocery_list

#Make a hash
car_hash = {
	ford: "focus",
	subaru: "outback",
	honda: "civic",
	toyota: "prius"
}
p car_hash