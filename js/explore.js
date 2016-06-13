

// create a variable and set it equal to a function with the word as a parameter.
// within the function, loop through the word, running the loop for the lengh of the word
// start at the length-1, and subtract 1 from the index over the life of the loop until you hit 0 (0 needs to be included in the loop, so go until i===0 or i>-1)
// take each index and concat it to a variable that will end up being the reversed word

reverse = function(word) {
	var newword = ""
	for (i=word.length-1;i>-1;i-=1) {
		newword=newword+word[i]
	}
	console.log(newword)
}

reverse("shit")