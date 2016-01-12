#app.rb

require_relative("lib/car.rb")

#variable and method names should be lowercase_with_underscore
bella_mini_cooper = Car.new("red", "Mini", "run run")


matts_mazda = Car.new("red", "Mazda", "BROOOOM")


faye_the_fit = Car.new("grey", "Honda", "vroooom")


bella_mini_cooper.rev
faye_the_fit.rev
matts_mazda.rev
