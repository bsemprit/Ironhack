class Helicopter
	def initialize
		@wheels = 3
		@sounds = "TuTuTu"
	end
end

chopper = Helicopter.new

class WheelCounter
end

counter = WheelCounter.new
counter.add_vehicle(chopper)

puts counter.wheel_counter
