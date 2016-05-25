

# puts "What is your name?"
# name=gets.chomp

puts "How old are you?"
age=gets.chomp
age=age.to_i

puts "What year were you born?"
year=gets.chomp
year=year.to_i

# puts "Our company cafeteria serves garlic bread. Should we order some for you?"
# bread=gets.chomp

# puts "Would you like to enroll in the company’s health insurance?"
# health=gets.chomp

currentyear=Time.new.year.to_i

yearage=currentyear-year

if yearage!=age
	agecheck=false
else agecheck=true
end