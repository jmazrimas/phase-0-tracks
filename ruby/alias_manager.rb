

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

def letter_changer(letter)
	vowels='aeiou'
	consonants='bcdfghjklmnpqrstvwxyz'
	#below is to check for capitalization
	if ('A'..'Z').include?(letter)
		vowels=vowels.upcase
		consonants=consonants.upcase
	end
	if vowels.include?(letter)
		if vowels.index(letter)+1 >= vowels.length
			vowels[0]
		else
			vowels[vowels.index(letter)+1]
		end
	elsif consonants.include?(letter)
		if consonants.index(letter)+1 >= consonants.length
			consonants[0]
		else
			consonants[consonants.index(letter)+1]
		end
	else letter
	end
end

def advance_letters(name)
	i=0
	while i<name.length
		name[i]=letter_changer(name[i])
		i+=1
	end
	name
end

def alias_maker(name)
	newname=reverse_name(name)
	advance_letters(newname)
end

$spy_name_hash={}

def outputspynames
	$spy_name_hash.each {|realname,aliasname| puts "#{aliasname} is actually #{realname}."}
end

############# USER INTERFACE

inputname=""

while inputname!="quit"
	puts "Please provide name to be aliased. To quit, type 'quit' (all lower case)"
	inputname=gets.chomp
	if inputname!="quit"
		$spy_name_hash.store(inputname, alias_maker(inputname))
		p alias_maker(inputname)
	end
end

outputspynames