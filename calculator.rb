def calculate(num1, num2, operation)
	if operation == "+"
		return num1 + num2
	elsif operation == "-"
		return num1 - num2
	elsif operation == "x"
		return num1*num2
	elsif operation == "/"
		return num1/num2
	else
		return nil
	end
end