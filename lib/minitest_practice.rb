require "minitest_practice/version"
 
module MinitestPractice
   class Main
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

	def enough_length?(n)
		if 3 <= n.length && n.length <= 8
			return true
		else
			return false
		end
	end
	
	def divide(m, n)
		if n == 0 
			return "error"
		else
			return m/n
		end
	end

	def fizz_buzz(n)
		if n%3 == 0 && n%5 == 0
			return "FizzBuzz"
		elsif n%5 == 0
			return "Buzz"
		elsif n%3 == 0
			return "Fizz"
		else
		end
	end

	def hello
		return 'Hello'
	end
 end
end
