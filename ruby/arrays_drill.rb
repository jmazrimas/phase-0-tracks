

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