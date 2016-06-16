
//PSEUDO CODE FOR LONGEST STRING FINDER
// Function will take array as an input
// Loop over the array and create a second array with the lengths of each string
// Non-destructively sort the count array so that the biggest number is at the top
// 	numberarray[0] is now the length of the string we want
// Get the index of that number in the number array and we know that the same index in the word array is the corresponding word
// Return that word 

var longest_finder = function(string_array) {
	var counts = []
	for (i=0; i<string_array.length; i++) {
		counts.push(string_array[i].length)
	}
	//below we're creating a new array (ordered...) by sorting the original.
	ordered_counts = counts.slice(0).sort();
	return string_array[counts.indexOf(ordered_counts[0])];
}

//////////Driver code for longest_finder:
var string_array1 = ["string 1", "string 2","the longest one","short","vs",3,"something"];

//Right now, the longest_finder function doesn't handle this very well...
var string_array2 = ["one","two","three"]

var string_array3 = ["very long, very, very long indeed","short","longer"]

console.log(longest_finder(string_array1));
console.log(longest_finder(string_array2));
console.log(longest_finder(string_array3));

//////////////////////////////////////////////
//////////////////////////////////////////////
//////////////////////////////////////////////
//Release 1 Below (checking for matching keys)
//////////////////////////////////////////////
//////////////////////////////////////////////
//////////////////////////////////////////////
//////////////////////////////////////////////

var person_1 = {job: "plumber", name: "Steven", age: 54};
var person_2 = {name: "Barry", age: 54, likes_ice_cream: true};
var person_3 = {name: "Larry", age: 20, likes_ice_cream: false};

var hasMatchingKeys = function(object_1, object_2) {
	var keycheck = false
	for (var keyval in object_1) {
		if (object_2.hasOwnProperty(keyval)) {
			if (object_2[keyval]===object_1[keyval]) {
				keycheck = true
			}
		}
	}
	return keycheck;
}

//Results in "true"
console.log(hasMatchingKeys(person_1,person_2));
//Results in "false"
console.log(hasMatchingKeys(person_2,person_3));