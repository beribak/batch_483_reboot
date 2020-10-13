
def calcFunc(num1, num2, operator)
	# if operator == "+"	
	# 	return num1 + num2
	# elsif operator == "-"
	# 	return num1 - num2
	# elsif operator == "x"
	# 	return num1*num2
	# elsif operator == "/"
	# 	return num1/num2
	# else
	# 	return nil
	# end

	case operator
	when "+"
		return num1 + num2
	when "-"
		return num1 - num2
	when "x"
		return num1*num2
	when "/"
		return num1/num2
	else
		return nil
	end
end