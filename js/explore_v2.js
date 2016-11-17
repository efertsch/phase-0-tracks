
// PSEDUOCODE:
	// Write a function that accepts a string as a parameter
	// Declare a variable and set it equal to an empty string
	// Loop through the string beginning at the last letter, incrementing down
	// Feed each character back into the new string
	// Call the method with various strings in test code 




var reverseString = function reverse(string) {
	reversedString = "";
	for (var i = string.length - 1; i >= 0; i--) {
		reversedString += string[i];
	};
	return reversedString;
}

console.log(reverseString("hello"));
console.log(reverseString("pirates"));


var drinkType1 = "Beer";
var drinkType2 = "Juice";
var sentence = "I'm not drunk!";
var isDrunk = true;

if (drinkType1) {
	isDrunk;
	console.log(reverseString(sentence));
}
else if (drinkType2) {
	!isDrunk;
	console.log(sentence);
}


