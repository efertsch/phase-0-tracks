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
	base_fib = [0,1]
	term.times do | n |
        if n < 2
            n 
        else 
        	n = (n - 1)  + (n - 2)
        	base_fib << n
       end 
    end 
    base_fib
end 

p fib_calc(6)

 #Release2
 


