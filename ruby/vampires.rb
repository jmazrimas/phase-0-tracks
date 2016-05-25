

puts "What is your name?"
name=gets.chomp

puts "How old are you?"
age=gets.chomp
age=age.to_i

puts "What year were you born?"
year=gets.chomp
year=year.to_i

	currentyear=Time.new.year.to_i

	yearage=currentyear-year

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

puts vampcheck