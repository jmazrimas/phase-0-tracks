

# Creating a class: DBC Student
# Attributes: name, age, location, current_week, feeling_good
# Methods:
# 	Advance a week
# 	Change locations
# 	Get really pissed at [concept]
# 	Figure out [concept]
# 	

###########BUSINESS LOGIC

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
end

def numcheck(number)
	while "#{number.to_i}"!=number
		puts "I didn't understand that input -- could you please provide an integer?"
		number = gets.chomp
	end
	number.to_i
end

def booleancheck(value)
	if value == true
		true
	elsif value == false
		false
	elsif value.downcase == "y"
		true
	elsif value.downcase == "n"
		false
	else nil
	end
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
	while booleancheck(feeling_good)!=true && booleancheck(feeling_good)!=false
		puts "please answer with a 'y' or an 'n'"
		feeling_good=gets.chomp
		feeling_good=booleancheck(feeling_good)
	end

	student=DbcStudent.new(name,age,location,current_week)

	student.feeling_good=feeling_good

end


###########USER INTERFACE

puts "How many students do you want to create?"
num_students = gets.chomp
num_students=numcheck(num_students)
num_students.times do |i|
	puts "create student #{i+1}"
	create_student
end