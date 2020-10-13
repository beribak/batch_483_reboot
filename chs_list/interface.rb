require "nokogiri"
filepath = "JeansEtsy.html"

html_content = File.open(filepath)


# 1. Show user all actions and ask him to pick one
puts "Welcome to Christmas list"
puts "You can list|add|delete|mark|etsy"

user_choice = ""
list = ["danko", "andrew", "emily", "danko"]
user_choice = gets.chomp
# list.delete_at()

def list_items(list)
	list.each_with_index do |item, index|
			puts "#{index} -- #{item}"
	end
end
# 2. Repeat procces or exit loop
while user_choice != 'quit'
# 3. Create functions for each action. And model gift list
	case user_choice
	when "list"
		list_items(list)
	when "add"
		puts "Which item do you wish to add?"
		item = gets.chomp
		list.push(item)
		# list[item] = 32	hash adding item
		puts "item added"
		list_items(list)
	when "delete"
		puts "Which item do you wish to add? Type the number next to the item."
		delete_item = gets.chomp.to_i
		list.delete_at(delete_item)
		list_items(list)
# 4. Mark the items that we bought  
	when "mark"
		puts "What item do you want to mark."
		list_items(list)
		item_index = gets.chomp.to_i
		
		if list[item_index][0...2] != "[x]"
			list[item_index] = "[x]#{list[item_index]}"
		else
			puts "You already purchesed this product."
		end
		list_items(list)
	when "etsy"
		etsy_names = []
		# 1. Call website using Nokigiri
		doc = Nokogiri::HTML(html_content)

		# 2. Retrieve item  
	 	doc.search('.v2-listing-card').each do |element|
		# 3. We search for the correct elements containing the items' title in our HTML doc
		  etsy_names << element.search('.text-body').text.strip
		end

		 # 4. For each item found, we extract its title and print it
		puts "What item do you want to add."
		etsy_names[0..3].each_with_index do |item, index|
			puts "#{index + 1} #{item}"
		end
		user_etsy_item = gets.chomp.to_i # ask user for what item from eatsy he wants to buy               

		# add item to array
		list.push(etsy_names[user_etsy_item])
		puts "item added"
		list_items(list)
	end	

	puts "Type quit to stop shoping. Choose one of this list|add|delete|mark|etsy"
	user_choice = gets.chomp
end

puts "thanks for shoping with us."