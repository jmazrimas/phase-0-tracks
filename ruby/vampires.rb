
# Initial check for how many employees
puts "How many employees to process?"
numemployees=gets.chomp

# set loop count to 0
iter=0

# start loop of questions
while iter<numemployees.to_i
	puts "What is your name?"
	name=gets.chomp

	puts "How old are you?"
	age=gets.chomp
	age=age.to_i
	
	require 'date'
	puts "What is your birthday? (dd/mm/yyyy)"
	birthday=gets.chomp
	birthday=Date.parse(birthday)
	currentdate=DateTime.now

		yearage=(currentdate-birthday).to_i/365

		if yearage!=age
			agecheck=false
		else agecheck=true
		end

	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	bread=gets.chomp

		if (bread =~ /yes/)==nil
			breadcheck=false
		else breadcheck=true
		end

	puts "Would you like to enroll in the company’s health insurance?"
	health=gets.chomp

		if (health =~ /yes/)==nil
			healthcheck=false
		else healthcheck=true
		end
	allergy=nil
	loop do
		puts "Please list any allergies, and type 'done' when finished."
		allergy=gets.chomp
		break if allergy=="sunshine"
		break if allergy=="done"
	end

	case
	when allergy=="sunshine"
		vampcheck="Definitely a vampire."
	else 
		if agecheck && (breadcheck || healthcheck)
			vampcheck="Probably not a vampire."
		else  vampcheck="Results inconclusive."
		end

		if  !agecheck && (!breadcheck || !healthcheck)
			vampcheck="Probably a vampire."
		elsif vampcheck!=nil
		else  vampcheck="Results inconclusive."
		end

		if !agecheck && !breadcheck && !healthcheck
			vampcheck="Almost certainly a vampire"
		elsif vampcheck!=nil
		else  vampcheck="Results inconclusive."
		end

		if name=="Drake Cula" || name=="Tu Fang"
			vampcheck="Definitely a vampire."
		elsif vampcheck!=nil
		else  vampcheck="Results inconclusive."
		end
	end
	puts vampcheck

	iter += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."