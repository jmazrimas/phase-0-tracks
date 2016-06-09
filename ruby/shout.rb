

# module Shout
# 	#nothing here yet
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yell_happily(words)
# 		words + "! :)"
# 	end

# end


# p Shout.yell_angrily("Shit")
# p Shout.yell_happily("I love cereal")

module Shout
	#nothing here yet
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yell_happily(words)
		words + "! :)"
	end

end

class Mom
	include Shout
end

class GymTeacher
	include Shout
end

mom=Mom.new
gymteacher=GymTeacher.new


p mom.yell_angrily("I told you to clean your room")
p gymteacher.yell_happily("Let's play some dodgeball")