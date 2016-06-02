

############# PSEUDOCODE

# method to:
# 	take name as input
# "sub method" to
# 	put first/last name in to an array (split)
		# reverse the order of the array (reverse?)
# 	return a string with the items from the array (join)
# "sub method to"
# 	change all vowels to next vowel and all consonants to next consonants
# 		create "check string" for vowels and consonants and iterate through both, that way we'll avoid character issues (i.e., names with apostrophes)
		# can't just use a 'next' here... so will need to do something with the indexes on the vol and con strings....
#		probably also good here to manage cases w/ upcase/downcase


############# BUSINESS LOGIC


def reverse_name(name)
	name.split(' ').reverse.join(' ')
end

def advance_letters(name)
	vowels='aeiou'
	consonants='bcdfghjklmnpqrstvwxyz'
	i=0
	while i<name.length
		if name[i].upcase==name[i]
			
		else
	end
end

def alias_maker(name)
	newname=reverse_name(name)

end
