variable = true.is_a?(Integer) # False

puts "#{variable}" # "False"
puts '#{variable}' # '#{variable}'  cant interpolate in '' 

puts  (1..5) # 1,2,3,4,5
puts (1...5) # 1,2,3,4

arr = ["value", 1, true ]
#index    0     1    2 

puts arr[1] #  1
puts arr[0] # "value"
puts arr[3][1] 

arr << "danko" # arr = ["value", 1, true, "danko"]
arr.push({ name: "andrew", city: "boston"}) # arr = ["value", 1, true, "danko", { name: "andrew", city: "boston"}]

arr.delete_at(0) # deletes "value"

arr.pop() # deletes last item

# {                     
# 	key => value,           <<<====== this is a HASH
# 	key => value
# }

hash = {
	"name" => "danko",
	"age" => "30",
	name: "darien"
}

# hash["key"] = "value"
hash["name"] = "andrew" # changes danko to andrew
hash["array"] = ["darien", true] # creates new key value pair
puts hash["array"][1] # true 
puts hash[:name] # "darien"

hash.each do |key, value|
	puts "#{key} #{value}"      # list all key value pairs in hash
end

# TRUE and FALSE in Ruby
puts [3, false] && true # true
puts nil && true # false
puts false && true # false
puts 4 && true # true
puts "4" && true # true                <<<<===    Everything is true besides false and nil

# Addition
puts 1 + 3 # 4
puts "aba" + variable + "bab" # "ababab" Concatination
puts "aba#{variable}bab"      # "ababab" Interpolation

# *
# 9/3 = 3
# 9%3 = 0

# 9/2 = 4
# 9%2 = 1   

var = 3
var += 4
puts var  # 7
 
var1 = "aba"
var1 += "bab"
puts var1 #= "ababab"

var -= 4 # 3
var /= 3 # 1


if 5 == 5
	puts true
end

puts "#{5 == 3}" # false
puts "#{5 != 3}" # true
puts "#{5 < 3}" # false
puts false && true # false
puts false || false # false
puts true || false # true

puts !false # true

var = true
var1 = false

if var1
	puts "danko"    # <<<<=== Nothing happens 
end

puts "danko" if var # "danko" 

var2 = ""
if var
	var2 = "danko"       # danko 
else
	var2 = "darien"
end

var1 ? var2 = "danko" : var2 = "darien"  # danko     
#           # if var1 true        if var1 false
puts var2        # danko

unless var == false
	puts "danko"            # danko
else
	puts "darien"
end

#=====================================
var = false
var1 = false

if var == true
	puts "danko"
elsif var == "danko"
	puts "darien"
elsif var == false
	puts false
else
	puts "helooo"
end
                     # if/elsif can be converted onto when
case var
when true
	puts "danko"
when "danko"
	puts "darien"
when false
	puts false
else
	puts "heloooo"
end


total_items = 0
 while total_items < 10
 	total_items += 1
 	puts "Thanks for purchasing this item."    # puts this 10 times
  end
total_items = 0
var = true

until var == false
	puts "danko"                   # it doesent execute
end                          

# begin 
# 	code
# end until var == false


for i in ["dsds",2,3]
	if i  == "dsds" 
		puts "danko"                #  "danko" "darien" "darien"
	else
		puts "darien"
	end	
end

for i in (1..5)
	if i  == "dsds" 
		puts "danko"                       # "danko" "danko" "danko" "danko" "danko"
	else
		puts "darien"
	end	
end

arr = ["danko", "christina", "chris"]

arr1 = arr.each do |item|
	puts "hello #{item}"                   # "hello danko"   "hello christina"  "chris" 
end

puts arr1 # ["danko", "christina", "chris"]

arr1 = arr.map do |item|
	item = item + "2"	
end
puts arr1 # ["danko2", "christina2", "chris2"] 

arr.each_with_index do |item, index|
	puts "#{item} #{index}"                # "danko 0" "christina 1" "chris 2"
end
