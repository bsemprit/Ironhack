class SalariedEmployee < Employee 
	def initialize(name, email, salary)
		@name = name
		@email = email
		@salary = salary
	end
	def calculate_salary
		 @salary
	end
end