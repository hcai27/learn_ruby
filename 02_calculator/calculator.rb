def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum1(array)
	array.inject(0,:+)
end

def sum(array)
	sum_t = 0
	array.each {|x| sum_t += x }
	sum_t
end
puts sum([])
puts sum([7,8,9])

def multiply(array)
	array.inject(:*)
end

def power(num, pow)
	num**pow
end

def factorial(num)
   		return 1 if (num ==0)
   sum_f =1
	
	num.downto(1).each do | x|
    	sum_f *=x
    end
    sum_f  
end
puts factorial(0)
puts factorial(3)
puts factorial(10)

