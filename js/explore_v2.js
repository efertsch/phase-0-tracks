var ReverseString = function(string) {
	reversedString = ""
	for (var i = string[-1]; i < string.length; i--) {
		reversedString += i;
	};
}

console.log(ReverseString("hello"));















// PSEDUOCODE:
	// Write a function that accepts a string as a parameter
	// Declare a variable and set it equal to an empty string
	// Loop through the string beginning at the last letter, incrementing down
	// Feed each character back into the new string
	// Call the method with various strings in test code 
