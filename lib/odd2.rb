	def odd?(n)
		if n % 2 == 0
			return false
		else
			return true
		end
	end
	
	def count_digits(n)
		1.upto Float::INFINITY do |i|
		break i if n < 10
		n /= 10
		end
	end
	
	def check_number?(n)

		if odd?(n) == false && count_digits(n) == 4
			return true
		else
			return false
		end
	end

p check_number?(2222)
p check_number?(2223)
