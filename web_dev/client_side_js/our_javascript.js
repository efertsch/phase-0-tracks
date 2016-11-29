//console.log("Our script is linked!");

var list_elements = document.getElementsByTagName("li");
console.log(list_elements);


var first_element = list_elements[0];
var second_element = list_elements[1];
var third_element = list_elements[2];

function changeFontColor(color, list_element) {
	var new_color = list_element.style.color = color;
	console.log(new_color);
}

changeFontColor("blue", first_element);
changeFontColor("purple", second_element);
changeFontColor("green", third_element);


function hideElement(event) {
	event.target.style.visibility = "hidden";
}

var header = document.getElementsByTagName("h1");
var headerTag = header[0];
headerTag.addEventListener("mouseover", hideElement);


