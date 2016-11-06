#Completed in pairing session with Aimee G and Jonah P.


int_arr = [1,2,3,4,5,6,7]

def search_array (arr, integer)
  arr.each do |position|
    if arr[position] == integer
      return position
    elsif arr[position] == (arr.length - 1)
      return nil
    end 
  end 
end 

p search_array(int_arr, 45)


def fib(fib_term)
	fib_array = [0,1]
	fib_term = fib_term - 2
	fib_term.times do |num|
		new_fibs = fib_array[-1] + fib_array[-2]
		fib_array << new_fibs
	end
	fib_array 
end 

p fib(100) 
array = fib(100)
p array[99] == 218922995834555169026



#RELEASE 2 PSUEDOCODE
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