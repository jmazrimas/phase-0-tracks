
class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender,ethnicity,age)
		# puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = age
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies (cookietype)
		puts "That was a good #{cookietype}!"
	end

	def celebrate_birthday
		@age=+1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
	end
	# #Setter methods
	# def gender=(gender)
	# 	@gender=gender
	# end
	# #Getter methods
	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

end


# santasteve = Santa.new
# santasteve.speak
# santasteve.eat_milk_and_cookies("chocolate chip")

# santas = []

genders=["male","female","agender","gender fluid"]
ethnicities=["black", "white", "Colombian", "Iranian-American", "Sioux", "Japanese", "Polish", "South African", "British", "Indian"]


# ethnicities.length.times do |i|
# 	santas << Santa.new(genders[i % genders.length],ethnicities[i])
# end

100.times do |i|
	santa = Santa.new(genders.sample, ethnicities.sample, rand(140))
	puts "Santa #{i} is #{santa.age}, #{santa.ethnicity} and #{santa.gender}"
end


# puts santas[4].age
# puts santas[4].ethnicity
# puts santas[4].celebrate_birthday
# puts santas[4].age
# puts santas[4].get_mad_at("Cupid")