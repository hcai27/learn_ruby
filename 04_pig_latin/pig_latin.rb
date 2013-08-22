

def translate(string)
	vowels = ["a","e","i","o","u"]
	consonants = ("a".."z").to_a - vowels
    string_array = string.split
    
    string_array.map! { |word|
   	if (vowels.include?(word[0]))
		 word + 'ay'
	elsif (word[0..1] == "qu")
		word[2..-1] + 'quay'
	elsif (word[0..2] == "squ")
		word[3..-1] + word[0..2] +'ay'
	elsif (consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2]))
		word[3..-1] + word[0..2] + 'ay'
	elsif (consonants.include?(word[0]) && consonants.include?(word[1])  )
		word[2..-1] + word[0..1] + 'ay'
	else (consonants.include?(word[0]))
		word[1..-1] + word[0] + "ay"
	end
	}

     return string_array.join(" ")
end


print translate("hi")
puts translate("apple")
puts translate("cherry")
print translate("eat pie")
puts translate("quiet")
puts translate("square")
print translate ("Sleep quiet in the House Square.")