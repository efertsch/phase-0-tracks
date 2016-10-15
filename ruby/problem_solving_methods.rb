#Release 0
our_array = [11, 15, 100, 50]

def search_array(arr, int)
	counter = 0
	result = 0
	array_length = arr.length
	while counter < array_length
		#Iterate through our array 
		arr.each do |number|
			#Look for / compare int with index of arr
			if number == int 
				#If int and index of array are = then print index 
				return counter
			else 
				nil 
			end 
			counter += 1	
		end 		
	end 

	# counter
	result
		#Identify whether integer is within array
		#Be able to return index value of integer
end 

p search_array(our_array, 50)


# Release 1
# Write a method that takes a fib term and creates and array 
def fib_calc(term)
	#Figure out length of term (in fib terms array)
	base_fib = []
	term.times do |n|
		if n == 0
			base_fib << 0
		elsif n == 1
			base_fib << 1
		else
			new_value1 = n -1
			new_value2 = n
			new_fib_val = new_value1 + new_value2
	  	p new_fib_val
			base_fib << new_fib_val

		end

	end

	base_fib
end 

 p fib_calc(6)

 #Release2
 


