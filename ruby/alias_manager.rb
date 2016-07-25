=begin
Psudocode
1. Swap first and last name using split and  reassignment	
2. Make method for incrementing vowels using an array of vowels
	
=end
def vowel_change(name)
	i = 0
	while i<=name.length
		p name
		modary = name[i].chars
	
		modary.each{|letter|
			if letter.downcase == "a"
				letter = "e"
			elsif letter.downcase == "e"
				letter = "i"
			elsif letter.downcase == "i"
				letter = "o"
			elsif letter.downcase == "o"
				letter = "u"
			elsif letter.downcase == "u"
				letter = "a"
			end
		}
	i += 1
	end
end
puts "Enter spy name"
name = gets.chomp.split
name[0], name[1] = name[1], name[0] 
vowel_change(name)
