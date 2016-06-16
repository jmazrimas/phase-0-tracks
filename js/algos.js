
//PSEUDO CODE FOR LONGEST STRING FINDER
// Function will take array as an input
// Loop over the array and create a second array with the lengths of each string
// Non-destructively sort the count array so that the biggest number is at the top
// 	numberarray[0] is now the length of the string we want
// Get the index of that number in the number array and we know that the same index in the word array is the corresponding word
// Return that word 

//////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
//Below was my original attempt. I realized this didn't work properly
//when doing release 2.2, so i changed it to the code below the commented out section here.
//////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////
// var longest_finder = function(string_array) {
// 	var counts = []
// 	for (l=0; l<string_array.length; l++) {
// 		counts.push(string_array[l].length)
// 	}
// 	//below we're creating a new array (ordered...) by sorting the original.
// 	// ordered_counts = counts.slice(0).sort();
// 	// return string_array[counts.indexOf(ordered_counts[0])];
// 	return string_array[counts.indexOf(counts.slice(0).sort()[0])];
// }

var longest_finder = function(stringArray) {
	newArray = stringArray.sort(function(a,b) {
		if (a.length > b.length) {
			return -1
		}
		if (a.length < b.length) {
			return 1
		}
		if (a.length === b.length) {
			return 0
		}
	})
	return newArray[0];
}

// //////////Driver code for longest_finder:
// var string_array1 = ["string 1", "string 2","the longest one","short","vs",3,"something"];

// //Right now, the longest_finder function doesn't handle this very well...
// var string_array2 = ["one","two","three"]

// var string_array3 = ["very long, very, very long indeed","short","longer"]

// console.log(longest_finder(string_array1));
// console.log(longest_finder(string_array2));
// console.log(longest_finder(string_array3));

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

// //Results in "true"
// console.log(hasMatchingKeys(person_1,person_2));
// //Results in "false"
// console.log(hasMatchingKeys(person_2,person_3));


//////////////////////////////////////////////
//////////////////////////////////////////////
//////////////////////////////////////////////
//Release 2 Below (random data generator)
//////////////////////////////////////////////
//////////////////////////////////////////////
//////////////////////////////////////////////
//////////////////////////////////////////////

var randomArrayData = function(len) {
	test_array = [];
	var charList = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
	for (i=0; i<len; i++) {
		var stringLen = Math.floor((Math.random()*10)+1);
		var newstring = ""
		for (j=0; j<stringLen; j++) {
			newstring+=charList[Math.floor((Math.random()*charList.length))]
		}
		test_array.push(newstring);
	}
	return test_array
}


for (k=0;k<10;k++) {
	var thearray = randomArrayData(5);
	console.log(thearray);
	console.log(longest_finder(thearray));
}



