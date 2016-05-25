puts "Hamster's name?"
name=gets.chomp

puts "Hamster's volume level? (1-10)"
volume=gets.chomp
volume=volume.to_i

puts "Hamster's fur color?"
color=gets.chomp

puts "Is this hamster a good candidate for adoption? (y/n)"
adoption=gets.chomp

puts "Estimated age?"
age=gets.chomp
if age==""
   age=nil
end
if age!=nil
    age=age.to_i
end

puts "Input Summary", "Name: #{name}" , "Volume: #{volume}", "Color: #{color}", "Good for adoption? #{adoption}", "Age: #{age}"