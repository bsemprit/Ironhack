require 'sinatra'
require_relative("lib/calculator.rb")

get "/" do
	(erb :calculations)
end


post "/calculate" do
	@first = params[:first_number].to_f
	@second = params[:second_number].to_f
	calculator = Calculator.new(@first, @second)

	operation = params["operation"] # => "addition"

	if operation == "addition"
		@result = calculator.add
		@op = "+"
	elsif operation == "subtraction"
		@result = calculator.subtract
		@op = "-"
	elsif operation == "divide"
		@result = calculator.divide
		@op = "/"
	elsif operation == "multiply"
		@result = calculator.multiply
		@op = "*"
	end
	(erb :results)
	
end

# get "/results" do
# 	(erb :results)
# end

post "/saved" do
	@stored = params[:save]
	IO.write("public/stored.txt", "#{@stored}")
	# open("public/stored.txt", "a") { |f| f.puts "#{@stored.to_i} /" }
	@stored_value = IO.read("public/stored.txt")
	erb(:stored)
end
