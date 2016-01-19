# spec/string-calculator_spec.rb

require_relative("../lib/string.rb")

RSpec.describe StringCalculator do
	it "returns 0 for empty string" do
		# p my_calc.add("") == 0
		my_calc = StringCalculator.new
		expect(my_calc.add("")).to eq(0)
	end	
	it "returns the number for one number" do
		my_calc = StringCalculator.new

		# p my_calc.add("9") == 9
		expect(my_calc.add("9")).to eq(9)

		# p my_calc.add("5") == 5
		expect(my_calc.add("5")).to eq(5)
	end
	it "returns sum of two numbers" do
		my_calc = StringCalculator.new
		expect(my_calc.add("9,5")).to eq(14)
	end
end