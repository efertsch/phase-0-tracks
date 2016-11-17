// PSEUDOCODE
	// Write a function that takes an array of words as a parameter
	// Create a longest word variable set equal to an empty string
	// Loop through each item in the array
		// Determine the number of letters in each word 
		// Set empty variable to current longest word
			// If next word in array is longer than current longest word, reassign the variable
			// Otherwise, do not replace the word 
	// After the entire array has been looped through return the longest word variable

var findLongest = function longest(word_array) {
	var currentLongest = "";
	for (var i = 0; i < word_array.length; i++){
		currentLongest = word_array[i];
		if (word_array[i].length > currentLongest.length) {
			currentLongest = word_array[i];
		};
	}
	currentLongest;
}

var wordArray = ["long phrase","longest phrase","longer phrase"];

console.log(findLongest(wordArray));


