

# Creating a class: DBC Student
# Attributes: name, age, location, current_week, feeling_good
# Methods:
# 	Advance a week
# 	Change locations
# 	Get really pissed at [concept]
# 	Figure out [concept]
# 	

###########BUSINESS LOGIC

$students=[]

def numcheck(number)
	while "#{number.to_i}"!=number
		puts "I didn't understand that input -- could you please provide an integer?"
		number = gets.chomp
	end
	number.to_i
end

def boolean_check(value)
	if value.downcase == "y" || value.downcase == "n"
		true
	else false
	end
end

def boolean_convert(value)
	if value.downcase=="y"
		true
	elsif value.downcase=="n"
		false
	else nil
	end
end

class DbcStudent
	attr_reader :name, :location
	attr_accessor :age, :current_week, :feeling_good
	def initialize (name, age, location, current_week)
		@name = name
		@age = age
		@location = location
		@current_week = current_week
		@feeling_good = true
	end

	def advance_a_week
		@current_week=+1
	end

	def change_locations(new_location)
		puts "I'm moving to #{new_location}!!"
		@location=new_location
	end

	def get_really_pissed_at(concept)
		@feeling_good=false
	end

	def figure_out(concept)
		@feeling_good=true
	end


def create_student
	puts "Student Name?"
	name=gets.chomp
	
	puts "Student Age?"
	age=gets.chomp
	age=numcheck(age)
	
	puts "Student Location?"
	location=gets.chomp

	puts "Current Week?"
	current_week = gets.chomp
	current_week = numcheck(current_week)

	puts "Is the student currently feeling good? (y/n)"
	feeling_good=gets.chomp
	while boolean_check(feeling_good)==false
		puts "please answer with a 'y' or an 'n'"
		feeling_good=gets.chomp
	end
	feeling_good=boolean_convert(feeling_good)

	$students << DbcStudent.new(name,age,location,current_week)
	$students.last.feeling_good=feeling_good

end


###########USER INTERFACE

puts "Do you want to create a student (y/n)?"
create_another = gets.chomp
boolean_check(create_another)
while boolean_convert(create_another) == true
	create_student
	puts "Do you want to create another (y/n)?"
	create_another=gets.chomp
	boolean_check(create_another)	
end

$students.each do |instance|
	puts "#{instance.name} in #{instance.location}: age = #{instance.age}, current week = #{instance.current_week} and feeling good = #{instance.feeling_good}"
end
