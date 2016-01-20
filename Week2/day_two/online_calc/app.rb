require 'sinatra'
require 'sinatra/reloader' if development?
require_relative("lib/calculator.rb")

get "/" do
	
	(erb :calculations)
end


post "/calculate" do

	if @stored_value == nil
		@first = params[:first_number].to_f

	else
		@first =@stored_value
	end
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
	@stored = params[:save].to_i
	IO.write("public/stored.txt", @stored)
	
	# @stored_value = IO.read("public/stored.txt")
	new_value = IO.read("public/stored.txt")
	if new_value == nil
		@gotten_value = nil
	else
		@gotten_value = new_value.to_i
	end
	erb(:calculations)
end
