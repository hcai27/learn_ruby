def echo(string)
	string
end

def shout(string2)
	string2.upcase
end

def repeat(*args)

	word = ""
	num =  0
	repeat = "hello"
	args.each do |x|
		if (x.is_a? String)
			word = x
 		else 
			num = x
		end
	end

	if (num == 0)
		return "#{repeat} #{repeat}"
	else
   		(num-1).times do 
     		repeat += " #{word}"
    	end
    end
	repeat

end
print repeat("hello", 3)
print repeat("hello")

def start_of_word(word, num)
	i =0
	char =""
	if num == 1
		return word[num-1] 
	else
		while i < num
	    	char += word[i]
	 		i+=1
		end
	end
	char
end

print start_of_word("hello", 1)
print start_of_word("Bob", 2)

def first_word(string)
	string.split(" ").first
end

def titleize(word)
	new_word = ""
	lowercase_words = ["the", "and", "over", "of"]
	word.capitalize!
	 return word.split.map { |x| 
	 	 
		if (lowercase_words.include?(x)  )
			x
		else
			x.capitalize
		end   

	  	}.join(" ")
	
	
end

puts titleize("jaws")
puts titleize("hello world")
puts titleize("the life and over of the river kwai")
puts titleize("david copperfield")
