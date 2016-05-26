require 'date'

	puts "What is your birthday? (dd/mm/yyyy)"
	birthday=gets.chomp
	birthday=Date.parse(birthday)
	currentdate=DateTime.now

puts (currentdate-birthday).to_i/365