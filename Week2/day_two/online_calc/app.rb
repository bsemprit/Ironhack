require 'sinatra'
require 'sinatra/reloader' if development?
require_relative("lib/calculator.rb")
require_relative("lib/memory.rb")

memory = Memory.new("public/stored.txt")

get "/" do
	@saved_number = memory.load_number
	(erb :calculations)
end


post "/calculate" do
	@first = params[:first_number].to_f

	@second = params[:second_number].to_f
	calculator = Calculator.new(@first, @second)

	operation = params["operation"] # => "addition"

	# if operation == "addition"
	# 	@result = calculator.add
	# 	@op = "+"
	# elsif operation == "subtraction"
	# 	@result = calculator.subtract
	# 	@op = "-"
	# elsif operation == "divide"
	# 	@result = calculator.divide
	# 	@op = "/"
	# elsif operation == "multiply"
	# 	@result = calculator.multiply
	# 	@op = "*"
	# end

	@result = calc.send(@operation)


	(erb :results)
	
end

post "/save" do
	memory.save(params[:save])
	redirect to("/")
end


