require 'lib/code_breaker'

describe CodeBreaker do
	it "should let me assign 1234 as secret code" do
		cb = CodeBreaker.new
		cb.secret_code = "1234"
		cb.secret_code.should == "1234" 
	end

	it "should return XX with 1256 and secret code 1234" do
		cb = CodeBreaker.new
		cb.secret_code = "1234"
		pista = cb.break_code("1256")
		pista.should == "XX";
	end

	it "should return true when guess code = 2234" do
		cb = CodeBreaker.new
		cb.secret_code = "2234"
		resp = cb.duplicated_digit("2234")
		resp.should == true
	end

	it "should return false when guess_code = 1234" do
		cb = CodeBreaker.new
		cb.secret_code = "2234"
		resp = cb.duplicated_digit("1234")
		resp.should == false
	end
end
