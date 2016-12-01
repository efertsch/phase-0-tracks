$(document).ready(function(){
	// console.log("The document is linked and ready!");

$("code").hover(function() {
	$(this).fadeTo(1000, 0.4);
});

$("h2").on("click", function() {
	$(this).css("font-size", "50px");
});

$("a").hover(function() {
	alert("Clicking this link will redirect you to another page!");
});


});

