#lib/invisible_car.rb
class InvisibleCar < Car 
	def rev
		puts "Cloaking activated #{@color} #{@make}"
		
		#calls (Parent's) Car's rev method
		super
	end
end