class BasicCalculator
	attr_accessor :num1, :num2, :op

	def initialize 
		puts "please enter your first number, operator and then second number"
		num1 = gets.chomp.to_i
		op = gets.chomp
		num2 = gets.chomp.to_i
		self.num1 = num1
		self.num2 = num2
		self.op = op
	end
	def add
		num1 + num2
	end
	def subtract
		num1 - num2
	end
	def multiply
		num1 * num2
	end
	def divide
		num1 / num2s
	end
	def output
		case op
		when "+" then puts "#{add}"
		when "-" then puts "#{subtract}"
		when "*" then puts "#{multiply}"
		when "/" then puts "#{divide}"
		else
			puts "This is not a valid operation"
		end
	end
end

class AdvCalculator < BasicCalculator
	def power
		puts num1 ** num2
	end
	def sqrt
		puts Math.sqrt(num1)
	end
	def output
		case op
		when "+" then puts "#{add}"
		when "-" then puts "#{subtract}"
		when "*" then puts "#{multiply}"
		when "/" then puts "#{divide}"
		when "**" then puts "#{power}"
		when "sqrt" then puts "#{sqrt}"
		else
			puts "This is not a valid operation"
		end
	end
end

class Bmi
	attr_accessor :weight, :height, :type

	def initialize
		puts "please enter your Weight followed by your Height as well as whether it is in (m)etric or (i)mperial"
		weight = gets.chomp
		height = gets.chomp
		type = gets.chomp
		self.weight = weight
		self.height = height
		self.type = type
	end

	def metric
		weight.to_i/(height.to_f ** 2)
	end
	def imperial
		703*(weight.to_i/(height.to_f ** 2))
	end
	def output
		case type
		when "m" then puts "#{metric}"
		when "i" then puts "#{imperial}"
		end
	end
end