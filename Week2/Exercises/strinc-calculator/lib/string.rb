class StringCalculator
	def add(numbers)
		if numbers.include?(",")
			numbers_array = numbers.split(",")
			numbers_array.reduce(0) do |sum, numbers|
				sum +=numbers.to_i
			end
		elsif numbers.length == 0 || numbers.length
			numbers.to_i
			
		end
		
	end


end