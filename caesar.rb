def solve_cipher(input)
	cipher_array= input.split
	cipher_array.each do |i|
		change = i.ord
		puts change
	end
	puts cipher_array
end

solve_cipher("ifmmp")
# should return "hello"