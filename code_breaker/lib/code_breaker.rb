class CodeBreaker 
	attr_accessor :secret_code

	def break_code(guess_code)
		"XX"
	end

	def duplicated_digit(guess_code)
		duplicated = false;
		for i in (0..3)
			digit = guess_code[1, i]
			for j in (i+1..3)
				if guess_code[1, i]==guess_code[1, j]
				duplicated =	true	
				end		
			end 		
		end 
		duplicated
	end
end	
