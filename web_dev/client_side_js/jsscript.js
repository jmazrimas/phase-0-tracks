// console.log("is this working?");

// MANUALLY CHANGE ELEMENTS
var h1headers = document.getElementsByTagName("h1");
h1header = h1headers[0];
h1header.style.border="solid 5px black";

// DYNAMICALLY CHANGE ELEMENTS
function addBorderToH2(event) {
	// var h2headers = document.getElementsByTagName("h2");
	// h2header = h2headers[0];
	// h2header.style.border="solid 10px black";
	event.target.style.border="solid 10px black";
}

function addH4Text(event) {
	event.target.textContent="now you see me!";
}

var h2headers = document.getElementsByTagName("h2");
h2header = h2headers[0];

h2header.addEventListener("click",addBorderToH2);

var newh4 = document.createElement("h4");
// newh4.textContent = "";

newh4.style.height="50px";

h1header.appendChild(newh4);

newh4.addEventListener("mouseover",addH4Text);