// PSEUDOCODE: RELEASE 0
	// Write a function that takes an array of words as a parameter
	// Create a longest word variable set equal to an empty string
	// Loop through each item in the array
		// Determine the number of letters in each word 
		// Set empty variable to current longest word
			// If next word in array is longer than current longest word, reassign the variable
			// Otherwise, do not replace the word 
	// After the entire array has been looped through return the longest word variable

var findLongestWord = function longest(wordArray) {
	var longestWord = "";
	var longestLength = 0;
	for (var i = 0; i < wordArray.length; i++){
		var currentWordLength = wordArray[i].length
		if (currentWordLength > longestLength) {
			longestLength = currentWordLength;
			longestWord = wordArray[i];
		};
	}
	return longestWord;
}


//PSEUDOCODE: RELEASE 1 
	// Write a function that accepts two objects as parameters 
		// For each key in the first object
			// Compare the keys to the keys in the second object
			// If the keys are equivalent, return true 
			// Otherwise, return false 
	// Write test code to call the function 

	var compareObject = function compare(object1, object2) {
		for (key in object1) {
			if (object1[key] == object2[key]) {
				return true; 
			}
		}
		return false; 
	}



// PSEUDOCODE: RELEASE 2
	// Write a function that generates a random number that accepts a minimum and maximum value
		// Use a built in js function (math.random) to generate a random number to be passed to random word generator 
	// Write a function generates a random word 
		// Define a library of characters to build words from
		// Declare a variable to store letters in as generated and set it to an empty string
				// While the number of letters is greater than or equal to zero
					// Call random number generator and pass it a range equal to the length of the character library 
					// Add character at the randomly generated index to the empty string (word variable)
					// Incremement the loop
				// Return the word variable 
	// Write a function that generates a word of a random length between 1 and 10 letters long 
		// Pass in an integer that represents the number of words to be generated 
		// Declare an empty array to store generated words in 
		// While the number of words is greater than 0
			// create a variable to store word length and set it equal to a random number between 1 and 10
			// Pass the variable to the random word generator function and push the result into the empty array
			// Decrememnt the loop by 1
		// return the array
	// Write Driver code to test functionality and feeds a result to longest word method. 



function generateRandNum(min, max) {
  return Math.random() * (max - min) + min;
}





function generateWords(wordLength) { 
	alphabet = 'abcdefghijklmnopqrstuvwxyz';
	word = ""

	return word
}










var exampleArray = ["long phrase","longest phrase","longer phrase"];
var longWords = ["sesquipedalian", "parsimonious", "magnanimous", "excogitate"];
console.log(findLongestWord(exampleArray));
console.log(findLongestWord(longWords));


var client1 = {name: "Steven", age: 54};
var client2 = {name: "Tamir", age: 54};
console.log(compareObject(client1, client2));


console.log(arrayGenerator(3));


