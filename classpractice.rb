class Car #creates class
	attr_accessor :color #gives access to color without print_color
	def initialize(color) 
		@color = color
	end
	def honk #you can add a function to a class and the method happens everytime it's called with the class
		puts "Beeeeeeeeeeeeeep!"
	end
	def print_color
		puts @color
	end
end 

my_car = Car.new "yellow" #creates objects (instances) with the new function in the class Car
puts my_car.class #returns the class "Car"
puts "cosa".class #returns the class "string"
puts 4.class #returns the class fixnum (number)

other_car = Car.new "brown"
my_car.color = "grey"

my_car.print_color #uses print_color function
other_car.print_color 

puts my_car.color #uses attr_accessor function to do print_color function
puts other_car.color


class Animal
  def initialize(name)
    @name = name
  end

  def describe
    puts "This animal's name is #{@name}"
  end
end

class Dog < Animal #extends Animal class to include Dog
end

class Cat < Animal
ends

class Human < Animal #extends class Animal to include human with salary and description
  def initialize(name, salary)
    super(name)
    @salary = salary
  end

  def describe_with_salary
    puts "This human's name is #{@name} and its salary is #{@salary}"
  end
end

dog = Dog.new "Winston Furchill"
cat = Cat.new "David Meowie"
human = Human.new "Johnny Appleseed", 12000

dog.describe
cat.describe
human.describe
human.describe_with_salary

