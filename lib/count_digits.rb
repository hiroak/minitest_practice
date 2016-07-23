def count_digits(n)
	1.upto Float::INFINITY do |i|
		break i if n < 10
		n /= 10
		
	end
end
p count_digits(122)
p count_digits(15984566)
p count_digits(145677)

def check_number?(m)
	if m % 2 == 0 && count_digits(m) == 4
		return true
	else
		return false
	end
end

p check_number?(2222)
p check_number?(2223)


