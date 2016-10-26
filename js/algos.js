var LengthFinder = function(array) {
	var longestWordLength = 0;
	var longestWord = "";
	for (var i = 0; i < array.length; i++) {
		if (array[i].length > longestWordLength) {
			longestWordLength = array[i].length;
			longestWord = array[i];
		}
	}
	console.log(longestWord);
};


var matchKeyValuePairs = function(object1, object2) {
	for (var key in object1) {
		var object1Keys = object1[key];
		var object2Keys = object2[key];
		// console.log(object1Keys);
		// console.log(object2Keys);
		do
			return true;
		while (object1Keys === object2Keys);
}
}

var generateRandString = function(number) {
		number.times; 
		var letters = "abcdefghijklmnopqrstuvwxyz";
		var lettersLength = letters.length
		var result = "";
		var stringArray = [];
		for (var i = 0; i < lettersLength; i++) {
			var randString = Math.random() * letters.length;
			result += letters.substr(randString, 10);
			stringArray.push(result);
		}

	return stringArray;
}



var testArray = ["long phrase","longest phrase","longer phrase"];
var testArray2 = ["toad", "volcano", "everglade", "bibliography"];
LengthFinder(testArray);
LengthFinder(testArray2);

var Man1 = {name: "Steven", age: 54};
var Man2 = {name: "Tamir", age: 54};

matchKeyValuePairs(Man1, Man2);

generateRandString(3);







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
// Write a function that accepts an integer as a parameter 
// Output should be an array of random strings of varying lengths 
// Create a variable and set it to an empty array
// For each instance of the number parameter, create a random word
// For the random word, generate a random length with a range of 1 - 10 letters
// Add the word to the array 
// Return the array
// Call the function 









