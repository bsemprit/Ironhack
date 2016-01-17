class MultiPaymentEmployee < Employee
	def initialize(name, email, salary, hourly_rate, hours_worked)
		@name = name
		@email = email
		@salary = salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end
	def calculate_salary
		if @hours_worked <= 40
			pay = @salary
		elsif @hours_worked > 40
			extra_hours = (@hours_worked - 40)
			pay = @salary + (@hourly_rate * extra_hours)
		end
		 pay	
	end

end