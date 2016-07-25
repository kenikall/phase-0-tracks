=begin
Psudocode
1. Swap first and last name using split and  reassignment	
2. Make method for incrementing vowels using an array of vowels
	
=end
def vowel_change(name)
	i = 0
	while i<=name.length-1 
		modary = name[i].chars
	
		modary.each_index{|letter|
			if modary[letter].downcase == "a"
				modary[letter] = "e"
			elsif modary[letter].downcase == "e"
				modary[letter] = "i"
			elsif modary[letter].downcase == "i"
				modary[letter] = "o"
			elsif modary[letter].downcase == "o"
				modary[letter] = "u"
			elsif modary[letter].downcase == "u"
				modary[letter] = "a"
			end
		}
		name[i] = modary.join
	i += 1
	end
	p name
	return name
end
puts "Enter spy name"
name = gets.chomp.split
name[0], name[1] = name[1], name[0] 
name = vowel_change(name)
p name
