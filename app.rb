require_relative "calc.rb"
puts "Enter your calculator type: (b)asic, (a)dvanced B(m)I"
type = gets.chomp
case type
when "b" 
	calcB = BasicCalculator.new
	calcB.output
when "a"
	calcA = AdvCalculator.new
	calcA.output
when "m"
	calcC = BmiCalculator.new
	calcC.output
end
