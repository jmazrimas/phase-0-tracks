

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
  
  def ride_to(biker_name, place)
    puts "#{biker_name} rode to #{place}"
  end
  
  def change_tire
    tire_fixed = true
    puts "Nice new tire!"
  end
  
  def initialize
    # print "instance created"
  end
  
end

biker_array = []
biker_hash = {}


# mike = Biker.new
# biker_array << mike


counter = 1
50.times do 
  new_biker = Biker.new
  #biker_array << new_biker
  biker_hash[new_biker]="Biker #{counter}"
#   # bikername= 
#   "biker#{counter}" = Biker.new
#   # puts bikername
#   mike = Biker.new
#   puts mike
#   # puts bikername
  counter+=1
end

# p biker_hash

# biker_array.each do |current_biker|
#   puts current_biker.ride_to("work")
#   puts current_biker.change_tire
# end


biker_hash.each do |biker_key, biker_name|
  puts biker_key.ride_to(biker_name, "work")
  puts biker_key.change_tire
end