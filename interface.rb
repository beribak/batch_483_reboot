# require_relative "calculator.rb"

# answer = "Y"

# until answer == "N"
# 	puts "Enter a number to be added."
# 	first_number = gets.chomp.to_i

# 	puts "Enter a second number to be added."
# 	second_number = gets.chomp.to_i

# 	puts "Which operation: [+][-][x][/]"
# 	operation = gets.chomp

# 	result = calculate(first_number, second_number, operation)

# 	if result
# 		puts "Result #{result}"
# 	else
# 		puts "OMG what did you do. You must enter two numbers and a valid operation."
# 	end
	
# 	puts "Do you want to calculate again. [Y/N]"

# 	answer = gets.chomp
# end
#=====================END of CALCULATOR=============================================================
#===================================================================================================

# horses = ["Dark Knight", "Gotham", "Joker", "Bat Woman"]

# user_balance = 100

# puts "Welcome to our horse race. \n"
# puts "======================================="

# while user_balance > 10
# 	puts "Your balance is #{user_balance}."
# 	puts "======================================="
# 	puts "What horse do you want to bet on."
# 	puts "======================================="
# 	puts "Please select from the below list. Enter the number of the horse you would like to bet on.\n"
# 	puts "======================================="

# 	horses.each_with_index do |horse, index|
# 		puts "#{index + 1} - #{horse}"
# 	end

# 	user_choice = gets.chomp.to_i - 1

# 	puts "You chose #{horses[user_choice]}"
# 	puts "======================================="
# 	puts "The race is about to begin."
# 	puts "======================================="

# 	winner = rand(0...horses.length)

# 	if (user_choice) == winner
# 		puts "You won."
# 		puts "======================================="
# 		user_balance += 50
# 	else
# 		puts "You lost. The winner was #{horses[winner]}"
# 		puts "======================================="
# 		user_balance -= 10
# 	end
# end

#=====================END of HORSERACE=============================================================
#===================================================================================================