$list_hash={}
# Method to create a list
def create_list(user_list)
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# puts ""
# steps:
  # [fill in any steps here]
  list_array = user_list.split(",")
  # set default quantity
  quanity = 1
  # print the list to the console [can you use one of your other methods here?]
  p list_array.collect { |item| [item, quanity] }
  $list_hash = Hash[list_array.collect { |item| [item, quanity] } ]
# output: [what data type goes here, array or hash?] Print result in hash
  p $list_hash
  $list_hash
end
# Method to add an item to a list
# take input of item qty use split method to make array

# input: item name and optional quantity
# steps:
# output:

def add_to_list (userinput)
  userinputarray=userinput.split(",")
  $list_hash[userinputarray[0]]=
    if userinputarray[1]==nil
      0
    else userinputarray[1]
    end
end

# Method to remove an item from the list
# input:
# steps:
# output:

def remove_item(item_to_remove)
  $list_hash.delete_if{|current_item, quantity|item_to_remove==current_item} #goes through entire item in delete if hash if item in hash delete from hash
end

# Method to update the quantity of an item
# input:
# steps:
# output:

def update_quantity(thingtochange)
    userinputarray=thingtochange.split(",")
    $list_hash.each do|current_item, qty| 
      if current_item==userinputarray[0]
        $list_hash[current_item]=userinputarray[1]
      else
      end
    end
end

# Method to print a list and make it look pretty
# input:
# steps:
# output:
def print_list()
  $list_hash.each do |current_item, quantity|
  p "#{current_item.strip}: #{quantity.to_i}"
  end
end

create_list("carrots,grapes,tomatoes")
add_to_list("celery")
add_to_list("lemonade,  2")
add_to_list("tomatoes, 3")
add_to_list("onions,  1")
add_to_list("ice cream    ,  4")

p $list_hash

update_quantity("celery,100")
p $list_hash

print_list


# What did you learn about pseudocode from working on this challenge?
#--- Frankly, we didn't do enough of it. Our driver was doing a lot of the pseudocoding using rough code, so we more or less ended up just writing ugly code and then fixing it.


# What are the tradeoffs of using arrays and hashes for this challenge?
#--- We used both, and not 100% what I'd call "by choice". The option of not using a hash would have probably been to manage all the data via arrays of arrays, and frankly both my pair and I would have found that much too confusing.


# What does a method return?
#--- Whatever you tell it to. It can return a hash, an array, a string, etc.


# What kind of things can you pass into methods as arguments?
#--- We've used mostly single variables up until this point (strings, integers), but you can also pass arrays, hashes or code blocks. I'm definitely still very shaky on passing in code blocks.


# How can you pass information between methods?
# --- I think to two basic ideas are that you can explicitly pass information in to a method by providing that information as arguments for the parameter(s) that method uses. You can also have global variables, arrays or hashes that can store that information globally so that multiple methods can access it.


# What concepts were solidified in this challenge, and what concepts are still confusing?
# --- I felt pretty confident with hashes and arrays going in to this, but implementing them and deciding which one to use ended up being very confusing. The idea of looping through an array or hash makes a lot of sense, and I think that's a really important concept. Things like the usage of Hash[]  on line 13 are still somewhat confusing, since clearly that's a class-level "method" being used, but there's not explicit "method" being called (i.e., I would expect a "." after "Hash").