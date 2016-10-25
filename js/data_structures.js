var horseColors = ["green", "magenta", "yellow", "blue"];
var horseNames = ["Bob", "Steve", "Michael", "David"];

horseColors.push("puce");
horseNames.push("Big Tony");

console.log(horseColors, horseNames);


var horses = {};

	for (var i = 0; i < horseNames.length; i++) {
		horses[horseNames[i]] = horseColors[i]
}


console.log(horses);