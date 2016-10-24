//PSUEDOCODE 
// Write a reverse function that takes a string as a parameter
// Define a variable to reverse and set it equal to an empty string 
// Within the function loop through each letter in the original string 
// Find the letter in the last position of the string
// For each letter in the string, while the length of the string is greater than or equal to zero, increment down by 1 
// Store the letter at each index (again, incrememnting down) in the empty string variable
// Return the new string
// Call the function with a sample string 

var StringReverser = function(string) {
	var ReversedString = " ";
	for (var i = string.length -1 ; i >= 0; i--) {
		ReversedString +=  string[i];
	};
	 return ReversedString;
}

StringToReverse = StringReverser("bacon");
// console.log(StringToReverse);

var IsHungry = true 

if (IsHungry) {
	console.log(StringToReverse);
}