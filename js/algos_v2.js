// PSEUDOCODE
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

var exampleArray = ["long phrase","longest phrase","longer phrase"];
var longWords = ["sesquipedalian", "parsimonious", "magnanimous", "excogitate"];

console.log(findLongestWord(exampleArray));
console.log(findLongestWord(longWords));

