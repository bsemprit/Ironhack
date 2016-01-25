class PasswordChecker
	def initialize(email, password)
		@email = email
		@password = password
	end
	def check_password
		if password_length && password_chr && case_letr && name_email
		true
		end	
	end
	def password_length
		@password.length > 7
	end

	def password_chr
		if 	(@password =~ /[a-zA-Z]/) != nil &&
			(@password =~ /\W/) != nil &&
			(@password =~ /\d/) != nil
			true
		end
	end

	def case_letr
		if (@password =~ /[A-Z]/) != nil &&
			(@password =~ /[a-z]/) != nil
			true
		end
	end

	def name_email
		email_split = @email.split("@") 
		email_domain = email_split[1][/[^.]+/]
		if (@password =~ /(christian), (gmail)/) != nil
			true
		end
	end
end