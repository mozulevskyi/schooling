class Checking

	def checking_unique_symbols(input1, input2)
		first_string = input1.split(//)
		second_string = input2.split(//)

		result = first_string & second_string
		if !result.empty?
			true
		else
			false
		end
	end

end

# new_one = Checking.new
# new_one.checking_unique_symbols('hello', 'world') // true
# new_one.checking_unique_symbols('hello', 'cat') // false

# Task: write a function that checks all characters in a string occur once.