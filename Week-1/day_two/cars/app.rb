#app.rb

require_relative("lib/car.rb")

#variable and method names should be lowercase_with_underscore
bella_mini_cooper = Car.new("red", "Mini")
puts bella_mini_cooper.inspect

matts_mazda = Car.new("red", "Mazda")
puts matts_mazda.inspect

faye_the_fit = Car.new("grey", "Honda")
puts faye_the_fit.inspect

bella_mini_cooper.rev
