#Release 0
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
				return counter
			else 
				nil 
			end 
			counter += 1	
		end 		
	end 
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
        	n = base_fib[- 1] + base_fib[- 2]
        	base_fib << n
       end 
    end 
    base_fib.last 
end 

p fib_calc(100)  

if fib_calc(100) == 218922995834555169026
	puts true 
else 
	puts false 
end 

 #Release2


 


