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
p fib_calc(100) == 218922995834555169026


# Release2: Investigate insertion Sorting 
# General psuedocode for insertion sorting:
# Create a new, empty array in which to store final output 
# Insert pivot value aka the first value from the initial array in the new array
# Compare each item in the initial array with the items in the new array (excluding the pivot value)
# If the item is less than the current item, insert the item before the current item
# If it is not, move to the next item in the new array
# If all of the items in the new array are less than item, insert item in the end of new array
# After iterating, method returns the new, sorted array


#Define insertion sorting method
def insertion_sorting(initial_array)

# Create new array where output will be stored
# Insert pivot value (first item of the inital array into the new array)
 final_array = [initial_array[0]]
# Delete at 0 to index at 1 because the pivot value it already sort wrt itself 
 initial_array.delete_at(0)

# Compare each item in initial array that of the final array 
 for number in initial_array 
 #Initialize index counter 
 	final_array_index = 0
 # While the index/position of the final array is less than the length of the final array
 	while final_array_index < final_array.length

 # Compare the item to the item at the current position of the final array
 # If the item (number) is less than the current item (number) 
 # Insert the item at the position / index before the current item
 			if number <= final_array[final_array_index]
 				final_array.insert(final_array_index, number)
 				break
 # Otherwise, compare the item to the final array index/position to the left (moving from right to left)
 			elsif final_array_index == final_array.length - 1
 # If all of the items in the final are less than item, insert item in the end of new array
 				final_array.insert(final_array_index + 1, number)
 				break
 			end 
 # Increment index counter/position
 		final_array_index +=1
 	end 
 end
# Return final array
 final_array
end 
#Provide array to sort 
initial_array = [5, 10, 7, 12, 16, 1, 4]
# After iterating, call method to sort and return the final, new
puts insertion_sorting(initial_array)

 


