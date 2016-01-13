class Helicopter
	attr_reader :sounds, :wheels
	def initialize
		@wheels = 3
		@sounds = "TuTuTu"
	end
end

chopper = Helicopter.new

class Car
	attr_reader :sounds, :wheels
	def initialize
		@wheels = 4
		@sounds = "Shhhhhh"
	end
end

mini = Car.new

class Tricycle
	attr_reader :sounds, :wheels
	def initialize
		@wheels = 3
		@sounds = "Vroom"
	end
end

tryke = Tricycle.new

class WheelCounter
	def initialize
		@vehicles = []
		@total = 0
	end
	def add_vehicle(vehicle)
		@vehicle = vehicle
		@vehicles << @vehicle
	end

	def wheel_counter
		
		@vehicles.each do |car|
			@total += car.wheels
		end

		@total

	end
end

counter = WheelCounter.new
counter.add_vehicle(chopper)
counter.add_vehicle(mini)
counter.add_vehicle(tryke)

puts counter.wheel_counter
