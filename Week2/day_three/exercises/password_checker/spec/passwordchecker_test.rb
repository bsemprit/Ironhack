require_relative("../lib/passwordchecker.rb")

describe PasswordChecker do

	before :each do @login_check = PasswordChecker.new("christian@gmail.com", "Password#1")
	end

	describe "#password_length" do
		it "checks if the password is longer than 7 chrs" do
			expect(@login_check.password_length).to eq(true)
		end
	end

	describe "#check_password" do 
		it "checks to see if all our methods work" do
			expect(@login_check.check_password).to eq(true)
		end
	end

	describe "#password_chr" do 
		it "checks for our required charater types" do
			expect(@login_check.password_chr).to eq(true)
		end
	end

	describe "#case_letr" do 
		it "checks to see if it has at least 1 upcase and downcase" do
			expect(@login_check.case_letr).to eq(true)
		end
	end

	describe "#name_email" do 
		it "checks to see if the email name and domain are in the password" do
			expect(@login_check.name_email).to eq(true)
		end
	end
end