#1. Create a hash for the market menu.
menu = {
	"kiwi" => "1.25$",
	"banana" => "0.5$",
	"mango" => "4$",
	"asparagus" => "9$"
}
#menu[kiwi] = "1.25$"

cart = []
bill = 0
#2. Show items.
menu.each do |key, value|
	puts "#{key} -- #{value}"
end

item = nil

until item == "ch"  
#3. Get user response
	puts "What do you want to buy. For checkout type [ch]"
	item = gets.chomp 

	#4. Add item to cart or checkout
	# cart << item
	if item != "ch"
		cart.push(item)
	end

	puts cart
end

# menu["banana"] = "0.5$" arr = ["0",".","5","$"], arr[1] = ".", arr[0...-1], arr[-2] = "5" arr[-1] = "$"
#5. Dsiplay bill if user checksout
cart.each do |product|
	bill += menu[product][0...-1].to_f
	# puts "#{menu[product][0...-1].to_f}"
end

puts "Checkout balance: #{bill}$"
