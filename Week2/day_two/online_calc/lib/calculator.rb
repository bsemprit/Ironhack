class Calculator
	attr_reader :numbers_added, :numbers_multiplied, :numbers_divided, :numbers_subtracted

	def initialize(number_one,number_two)
		@number_one = number_one
		@number_two = number_two
	end

	def add
		@numbers_added = @number_one + @number_two
	end

	def multiply
		@numbers_multiplied = @number_one * @number_two
	end

	def divide
		@numbers_divided = @number_one/ @number_two
	end

	def subtract
		@numbers_subtracted = @number_one - @number_two
	end

end