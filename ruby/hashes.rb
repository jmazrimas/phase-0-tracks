# initialize empty array

# method for each question that will:
# 	ask question
# 	check data type for numbers and yes/no responses (two separate methods for this)
# 		re-ask if necessary
# 	if the data is good add to the array (separate method for this)

# method to ask for any edits to the array

# method to 
# 	call the question methods in order
# 	print the resulting array
# 	call another method to make edits

$client_info={}

def addtoclienthash(idx,val)
	$client_info[idx]=val
end

def checkifnumber(val)
	valnew=val.to_i
	if valnew==0
		false
	else true
	end
end

def checkyesno(val)
	if val.downcase=="y"
		true
	elsif val.downcase=="n"
		false
	else "badvalue"
	end
end

def checkanswerlen(text,len)
	if text.length<=len
		true
	else false
	end
end

def clientname
	puts "Client name?"
	cname=gets.chomp
	addtoclienthash(:clientname,cname)
end

def clientage
	puts "Client's age? (please use whole number)"
	cage = gets.chomp
	# cage = cage.to_i
	# while cage==0
	# 	puts "Please provide client's age is whole numbers"
	# 	cage = gets.chomp
	# 	cage = cage.to_i
	# end
	while checkifnumber(cage) ==false
		puts "Please provide client's age in whole numbers"
		cage = gets.chomp
	end		
	addtoclienthash(:age,cage)
end

def clientstyle
	puts "In less that 30 characters, describe the client's style"
	cstyle=gets.chomp
	while checkanswerlen(cstyle,30) == false
		puts "Please describe in less than 30 characters"
		cstyle=gets.chomp
	end
end

def numrooms
	puts "Number of rooms to be decorated?"
	crooms = gets.chomp
	while checkifnumber(crooms)==false
		puts "Please provide the number of rooms in whole numbers"
		crooms = gets.chomp
	end
	addtoclienthash(:rooms,crooms)
end

def clientblue
	puts "Does the client like the color blue? (y/n)"
	blueraw = gets.chomp
	while checkyesno(blueraw) == "badvalue"
		puts "Please indicate whether the client likes blue with a 'y' or a 'n' only."
		blueraw = gets.chomp
	end
	addtoclienthash(:likesblue,checkyesno(blueraw))
end

def clientstripes
	puts "Does the client like stripes? (y/n)"
	stripesraw = gets.chomp
	while checkyesno(stripesraw) == "badvalue"
		puts "Please indicate whether the client likes stripes with a 'y' or a 'n' only."
		stripesraw = gets.chomp
	end
	addtoclienthash(:likesblue,checkyesno(stripesraw))
end


clientstyle

p $client_info.values