//Release 0: PSEUDOCODE
// Write a function that accepts an array of words as a parameter
	// Within the function write a for loop that:
		// Initializes a counter variable and sets it equal to 0
		// Compares the length of the array to the counter variable 
		// Increments by 1 to determine when the loop stops
	// Within the loop:
		// Find the length of each string item in the array
		// For each item, return the length of the string  
		// If the length of the string is greater than the length of the string before it
			// Return the string 
		// Otherwise, if the length of the string is shorter than the one before it
			// Move to the next item 
	// Return the string with the greatest length 
// Call the method using multiple arrays to test 


 
var LengthFinder = function(array) {
	var longestWord = array[0];
	for (var i = 0; i <= array.length; i++) {
		stringLength = array[i].length;
		if (stringLength > longestWord.length) {
			var longestWord = array[i];
			console.log(longestWord);
		}
		
	}
};

var testArray = ["long phrase","longest phrase","longer phrase"];
LengthFinder(testArray);

// Release 1: PSEUDOCODE
// Write a function that accepts two objects as a parameter
	// Within the function, write a loop that:
		// Initializes a counter variable and sets it equal to 0
		// Compares the length of the array to the counter variable 
		// Increments by 1 to determine when the loop stops 
			// Return the values of the first object at each index 
			// If the values from the first object are equal to any values in the second object
			// Reutrn the like objects, print a statement with like objects
			// Otherwise don't return anything, print a statement saying there are no like objects 
// Add driver code to call the function 


// Release 2: PSEUDOCODE
// Write a function that accepts an integer as a parameter to return an array of strings based on the integer
// Create a variable and set it to an empty array
// Use a random number generator to generate the length of each word



