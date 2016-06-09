

module Shout
	#nothing here yet
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yell_happily(words)
		words + "! :)"
	end

	w!
end


Shout.yell_angrily("Shit")
Shout.yell_happily("I love cereal")