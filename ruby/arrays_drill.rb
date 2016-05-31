def create_array(item_1, item_2, item_3)
	[item_1, item_2, item_3]
end

p create_array("test1", "test2", "test3")

def add_to_array(array, item_to_add)
	array << item_to_add
end

p add_to_array([], "2")

p add_to_array([2,3,false], "cat")

testarray=[]

testarray2=["a1","b2",3,5,9,true]

testarray.insert(0,"teststring", 3,false,"othertesttring")

arrayvar = testarray

p arrayvar

testarray.delete_at(2)

testarray.insert(2,"new item at 2")

p arrayvar

testarray.shift

p arrayvar

p "does this array contain 'other test string?': #{testarray.include?("othertesttring")}"

newarrayvar = testarray+testarray2

p newarrayvar