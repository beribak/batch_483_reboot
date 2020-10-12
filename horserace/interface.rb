#1. Model horses and define starting balance
horses = ["Gotham", "Dark Knight", "Thunder", "Danko"]
#            0           1             2
balance = 10
answer = "Y"

while balance > 9 && answer == "Y"
	puts "Wecome the the horse race."
	puts "=========================="
	puts "Your balance: #{balance}."
	puts "Type the number of the horse you want to bet on."
	#2. Let user pick a horse
	horses.each_with_index do |horse, index|
		puts "#{index + 1} - #{ horse}"
	end

	#3.Capture user response
	user_choice = gets.chomp.to_i - 1
	# horses[2]
	#4. Run race and get winning horse
	# winner = horses[rand(0...horses.length - 1)]
	winner = horses.sample()   
	#5.Show resluts
	# puts winner

	#6. Change starting balance based on the winner
	if horses[user_choice] == winner
		balance += 50
		puts "Congrats you won."
	else
		balance -= 10
		puts "You suck."
	end
	 

	#7. Ask user if he wants to bet again or exit race
	puts "Do you want to bet again or exit the race. [Y/N]"
	answer = gets.chomp
	#8. Either loop or exit
end

if balance == 0
	puts "You ran out of money."
end

puts "Your balance: #{balance}."