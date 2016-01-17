class Helicopter
	attr_reader :sounds, :wheels
	def initialize
		@wheels = 3
		@sounds = "TuTuTu"
	end
end

class Car
	attr_reader :sounds, :wheels
	def initialize
		@wheels = 4
		@sounds = "Shhhhhh"
	end
end



class Tricycle
	attr_reader :sounds, :wheels
	def initialize
		@wheels = 3
		@sounds = "Dananananana"
	end
end



class WheelCounter
	def initialize
		@vehicles = []
		
	end
	def add_vehicle(vehicle)
		@vehicles << vehicle
	end

	def wheel_counter
		total_wheels = 0
		@vehicles.each do |car|
			total_wheels += car.wheels
		end

		total_wheels

	end
end

chopper = Helicopter.new
batmobile = Tricycle.new
mini = Car.new

counter = WheelCounter.new
counter.add_vehicle(chopper)
counter.add_vehicle(mini)
counter.add_vehicle(batmobile)

puts counter.wheel_counter
