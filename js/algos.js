
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
	console.log(counts)
}

var string_array = ["string 1", "string 2","the longest one"];

longest_finder(string_array);

//console.log(string_array.length);