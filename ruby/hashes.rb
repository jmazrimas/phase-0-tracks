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

#####################################
#####################################
########## BUSINESS LOGIC ##########
#####################################
#####################################

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
		addtoclienthash(:name,cname)
	end

	def clientage
		puts "Client's age? (please use whole number)"
		cage = gets.chomp
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
		addtoclienthash(:style,cstyle)
	end

	def clientnumrooms
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
		addtoclienthash(:likesstripes,checkyesno(stripesraw))
	end


	def runquestions
		clientname
		clientage
		clientstyle
		clientnumrooms
		clientblue
		clientstripes
	end

	def editchecker(field)
		while $client_info[field.downcase.to_sym] == nil
			puts "That's not the name of a field, please provide a valid field name"
			field=gets.chomp
			p field.downcase.to_sym
		end
	end

	def editmaker
		puts "What field would you like to edit?"
		field=gets.chomp
		editchecker(field)
		puts "What value would you like to insert for #{field}?"
		value=gets.chomp
		addtoclienthash(field.downcase.to_sym,value)
	end

	def askforedits
		puts "Do you want to make any edits to the above? (y/n)"
		edits=gets.chomp
		while checkyesno(edits) == "badvalue"
			puts  "Please indicate whether you'd like to make any edits with a 'y' or a 'n' only."
			edits=gets.chomp
		end
		if checkyesno(edits) == true
			editmaker
			$client_info.each { | k,v | puts "#{k} = #{v}"}
		else
		end
	end

#####################################
#####################################
########## USER INTERFACE ##########
#####################################
#####################################

	runquestions

	$client_info.each { | k,v | puts "#{k} = #{v}"}

	askforedits