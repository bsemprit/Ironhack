#app.rb

require_relative("lib/car.rb")
require_relative("lib/flying_car.rb")
require_relative("lib/invisible_car.rb")
require_relative("lib/person.rb")

#variable and method names should be lowercase_with_underscore
bella_mini_cooper = Car.new("red", "Mini", "run run")
bella_mini_cooper.rev

matts_mazda = Car.new("red", "Mazda", "BROOOOM")
matts_mazda.rev

faye_the_fit = Car.new("grey", "Honda", "vroooom")
faye_the_fit.rev

my_flying_car = FlyingCar.new("blue", "Tesla", "swoosh")
my_flying_car.rev
my_flying_car.fly

my_invisible_car = InvisibleCar.new("camo", "Ford", "errk")
my_invisible_car.rev

bianca = Person.new("Bianca", 24)

#Below d
oesn't work because you can't change the name because it is only read accessible
# bianca.name = "Bixi"
puts bianca.name
puts bianca.age

bianca.age = 12
puts bianca.age




