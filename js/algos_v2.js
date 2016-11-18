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


//PSEUDOCODE: RELEASE 2 
	// Write a function that accepts an integer as a parameter for length
		// Declare an empty array to store random words in
		// Based on the integer passed in, generate that many random words
			// length of words should be generated randomly with a range of 1 - 10 for each word
		// Store each new, random word in the array 
		// Return the array 
	// Add driver code that generates an array 
		// print the newly generated array 
		// pass the array to the findLongestWord function and print result 


var arrayGenerator = function generate(integer) {
	var wordArray = [];
	wordArray.length = integer; 
	alphabet = 'abcdefghijklmnopqrstuvwxyz';
	

}










var exampleArray = ["long phrase","longest phrase","longer phrase"];
var longWords = ["sesquipedalian", "parsimonious", "magnanimous", "excogitate"];
console.log(findLongestWord(exampleArray));
console.log(findLongestWord(longWords));


var client1 = {name: "Steven", age: 54};
var client2 = {name: "Tamir", age: 54};
console.log(compareObject(client1, client2));


console.log(arrayGenerator(3));


