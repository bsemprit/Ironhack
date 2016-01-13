class Car
	def initialize
		@list_brands = {
				:Ford => ["Fiesta", "Mustang"],
				:Seat => ["Ibiza", "Leon", "Toledo"]
				}
	
	end

	def cars (brand)
		@brand = brand

		@list_brands.each do |key,value|
			if @brand == "#{key}"
				@value = value[0..-1]
				puts "#{key}: #{@value}"
			end
		end	
			
	end
end
