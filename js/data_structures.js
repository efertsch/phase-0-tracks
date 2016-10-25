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


function Car(make, model, name, color, year, isFast) {
	console.log("A new car:", this);

	this.make = make;
	this.model = model;
	this.name = name;
	this.color = color;
	this.year = year;
	this.isFast = isFast;
	this.engineSound = function() { 
		if (this.isFast) {
			console.log("VROOOOOOOOM!");
		}
		else {
			console.log("pffffffftttttttt");
		}
		};

	console.log("CAR INTITIALIZATION COMPLETE:")
}

console.log ("Let's build your new car...")
var Car1 = new Car("Ford", "F150", "Fred", "white", 2001, false);
console.log(Car1);
console.log("Our car goes:");
Car1.engineSound();
console.log("__________")


console.log ("Let's build your new car...")
var Car2 = new Car("Pontiac", "Grand Prix", "Stella", "maroon", 1998, true);
console.log(Car2);
console.log("Our car goes:");
Car2.engineSound();
console.log("__________")


console.log ("Let's build your new car...")
var Car3 = new Car("Subaru", "Legacy", "Lance", "forest green", 1996, false);
console.log(Car3);
console.log("Our car goes:");
Car3.engineSound();
console.log("__________")

