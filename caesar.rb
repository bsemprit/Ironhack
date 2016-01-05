# def solve_cipher(input) #first iteration
# 	word = ""
# 	array1 = input.split("")
# 	array1.each do |i|
# 		order = i.ord
# 		if order == 97
# 			order = 122
# 		elsif order == 65
# 			order = 90	
# 		else
# 		order = order - 1
# 		end	
# 		word = word + order.chr
# 	end
# 	puts word
# end

# solve_cipher("ifmmp")
# solve_cipher("ANTHONY")
# # should return "hello"

def solve_cipher(input, x) #first iteration
	word = ""
	# make= input.gsub(/[!@#$%^&*()-=_+|;':",.<>?' ]/, '')
	# puts make
	array1 = input.split("")
	array1.each do |i|
		order = i.ord
		# if order == 97 && x > 0
		# 	order = 122 - x
		# elsif order == 97 && x < 0
		# 	order = 122 + x
		if order == 32
			order == 32
		elsif i.ord + x < 97
			order = 122 + (97 - i.ord)
		elsif i.ord + x > 122
			order = 97 - (123 - i.ord)
		elsif x < 0
		order = order + x
		elsif x > 0
		order = order - x
		end	
		word = word + order.chr
	end
	puts word
end

solve_cipher("pb uhdo qdph lv grqdog gxfn", -3)