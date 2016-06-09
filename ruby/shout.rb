

module Shout
	#nothing here yet
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(words)
		words + "! :)"
	end

end


p Shout.yell_angrily("Shit")
p Shout.yell_happily("I love cereal")