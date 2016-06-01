def method_that_takes_a_block
  puts "Before the block"
    yield("First", "Second")
  puts "After the block"
end

numbers_array = ["1", "2", "3", "4", "5","6","7"]
letters_hash = {first: "a", second: "b", third: "c"}
words_array = ["dog", "cat", "orange","ape"]

# method_that_takes_a_block { |item1, item2| puts "Block was given #{item1} and #{item2}"}

# p numbers_array
# numbers_array.each { |number| puts "We've reached the number #{number}" }
# p numbers_array

numbers_array_new = numbers_array.clone

numbers_array.map! { |number| number.to_i + 1 }
p numbers_array

p numbers_array_new

######DELETE ALL NUMBERS LESS THAN SOMETHING#########
numbers_array_reject = numbers_array_new.reject {|number| number.to_i<3}
numbers_array_new.delete_if {|number| number.to_i<5}
p numbers_array_new
p numbers_array_reject

######RETURN ONLY RESULTS THAT SATISFY X##############
p numbers_array.select {|number| number.to_i>7}
p numbers_array.keep_if {|number| number<8}

#######REMOVE ITEMS UNTIL AN ITEM DOESN'T MEET A CONDITION##########
p words_array.drop_while {|word| word.length<4}

p letters_hash
letters_hash.each { |ordinal, letter| puts "The #{ordinal} letter is #{letter}" }
p letters_hash