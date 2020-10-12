
require_relative "calculator.rb"

user_choice = "Y"


while user_choice == "Y"
	#1. Ask user for number input
	puts "Pick a number."
	#2. Capture the user input
	number1 = gets.chomp.to_i
	#3. Ask user for second number input
	puts "Pick a second number."

	#4. Capture the second number input
	number2 = gets.chomp.to_i

	#5. Ask user to pick an operator
	puts "What operator do you want to use: [+][-][x][/]"
	operator = gets.chomp

	#6. Add numbers together and return them
	result = addTwoNumbers(number1, number2, operator)
	
	if result == nil
		puts "OMG What did you do you broke the computer. Pls use a valid operator."
	else
		puts "Result: #{result}"
	end

	# result == nil ? puts "OMG What did you do you broke the computer. Pls use a valid operator." : puts "Result: #{result}"

	#7. Ask user if he wants to stop.
	puts "Do you want to do another calculation or exit the calculator. Answer with [Y/N]"
	user_choice = gets.chomp
	#8. Repepeat the steps from before untill users says stop
end