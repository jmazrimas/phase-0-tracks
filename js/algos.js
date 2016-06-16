
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

var object_1 = {job: "plumber", name: "Steven", age: 54};
var object_2 = {name: "Barry", age: 54, likes_ice_cream: true};

matching_keys = [];

var hasMatchingKeys = function(object_1, object_2) {
	for (var keyval in object_1) {
		if (object_2.hasOwnProperty(keyval)) {
			if (object_2[keyval]===object_1[keyval]) {
				matching_keys.push(keyval)
			}
		}
	}
	return matching_keys.length>0
}

hasMatchingKeys(object_1,object_2);

// console.log(object_1.name===object_2.name);
// console.log(object_1.name);
// console.log(object_2.name);
//console.log(matching_keys);