

# encrypt method
# get length of input string
# loop
# 	advance every letter 1 forward (b=>c)
# 	skip spaces
# 	account for z

# decrypt
# index all letters in alphabet
# loop through each letter in input:
# 	find current letter in that alphabet (returns current position)
# 	subtract 1 from current position
# 	output letter from index that matches that position

# puts "what do you want to encrypt"
# word=gets.chomp

# $strlen=word.length

# def encrypt(eword)
# 	counter = 0
# 	while counter < $strlen
# 		if eword[counter]==" "
# 		elsif eword[counter]=="z"
# 		 	eword[counter]="a"
# 		else
# 		eword[counter]=eword[counter].next
# 	end
# 	counter+=1
# 	end
# 	p eword
# end

# encrypt(word)

puts "what do you want to decrypt?"
word2=gets.chomp

$strlen2=word2.length


def alphamethod(currentletter)
	alpha="abcdefghijklmnopqrstuvwxyz"
	newletter=alpha.index(currentletter)-1
	alpha[newletter]
end

def decrypt(dword)
	counter=0
	while counter<$strlen2
		if dword[counter]==" "
		elsif dword[counter]=="a"
		 	dword[counter]="z"
		else
		dword[counter]=alphamethod(dword[counter])
	end
	counter+=1
	end
	p dword
end

decrypt(word2)