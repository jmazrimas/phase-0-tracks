


class Santa
	def initialize
		puts "Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies (cookietype)
		puts "That was a good #{cookietype}!"
	end
end


santasteve = Santa.new

santasteve.speak
santasteve.eat_milk_and_cookies("chocolate chip")