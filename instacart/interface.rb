#1. Create a hash for the market menu and an array for the cart.
menu = {
	"kiwi" => "1.25$",
	"banana" => "0.5$",
	"mango" => "4$",
	"asparagus" => "9$"
}
#menu[kiwi] = "1.25$"
cart = []
bill = 0
item = nil
#2. Show items.
menu.each do |key, value|
	puts "#{key} -- #{value}"
end

until item == "ch"  
	#3. Get user response
	puts "What do you want to buy. For checkout type [ch]"
	item = gets.chomp 

	#4. Add item to cart or checkout
	if item != "ch"
		cart.push(item) # same as cart << item
	end

	puts cart
end

#strings can be handeled like arrays
# menu["banana"] = "0.5$" arr = ["0",".","5","$"], arr[1] = ".", arr[0...-1] = "0.5", arr[-2] = "5" arr[-1] = "$"
#5. Dsiplay bill if user checks out
cart.each do |product|
	bill += menu[product][0...-1].to_f # get the price without the dollar symbol $ so you can convert to float .to_f
end # the explanation of how this works is on line 33

puts "Checkout balance: #{bill}$"
