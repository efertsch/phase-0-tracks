
our_array = [11, 15, 100, 50]

def search_array(arr, int)
	counter = 0
	array_length = arr.length
	while counter < array_length
		#Iterate through our array 
		arr.each do |number|
			#Look for / compare int with index of arr
			if number == int 
				#If int and index of array are = then print index 
				puts counter 
			else 
				nil 
			end 
			counter += 1	
		end 		
	end 
		#Identify whether integer is within array
		#Be able to return index value of integer
end 

p search_array(our_array,15)