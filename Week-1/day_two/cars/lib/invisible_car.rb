#lib/invisible_car.rb
class InvisibleCar < Car 
	def rev
		puts "Cloaking activated #{@color} #{@make}"
	end
end