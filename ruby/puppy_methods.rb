

# SPECIES ------------------------
# Canine

# CHARACTERISTICS ----------------
# Breed: varies
# Wet nose: yes
# Eye count: 2
# Has Teeth: yes
# Name: varies
# Color: varies

# BEHAVIOR -----------------------
# Chase Ball
# Run
# Lick Face
# Destroy Household Object

# class Puppy
  
#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end
  
#   def speak(numtimes)
#     return puts "woof " * numtimes
#   end
  
#   def rollover
#     puts "roll over!"
#   end
  
#   def dogyears(years)
#     puts years*7
#   end
  
#   def eatsfood(food)
#     puts "I ate the #{food}!"
#   end
  
#   def initialize
#     puts "Initializing new puppy instance"
#   end
  
# end


# newpup = Puppy.new

# p newpup.fetch("paper")
# p newpup.speak(3)
# p newpup.rollover
# p newpup.dogyears(32)
# p newpup.eatsfood("couch")

class Biker
  
  def ride_to(place)
    puts "I rode to #{place}"
  end
  
  def change_tire
    tire_fixed = true
    puts "Nice new tire!"
  end
  
  def initialize
    print "instance created"
  end
  
end

biker_array = []


mike = Biker.new
biker_array << mike

mike = Biker.new
biker_array << mike



# counter = 1
# 50.times do 
#   # bikername= 
#   "biker#{counter}" = Biker.new
#   # puts bikername
#   mike = Biker.new
#   puts mike
#   # puts bikername
#   counter+=1
# end

  p biker_array
