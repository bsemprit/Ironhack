class Calculator
	

	def initialize(number_one,number_two)
		@number_one = number_one
		@number_two = number_two
	end

	def add
		@number_one + @number_two
	end

	def multiply
		@number_one * @number_two
	end

	def divide
		@number_one/ @number_two
	end

	def subtract
		@number_one - @number_two
	end

	def method_missing(meth, *args)
		hopeful = self.methods.grep(/#{Regexp.quote(meth.to_s)}/).first
		self.send(hopeful)
	end

end