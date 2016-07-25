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
	return name
end

def consonant_change(name)
	alpha = "bcdfghjklmnpqrstvwxyz".chars
	i = 0
	while i<=name.length-1 
		name[i] = name[i].downcase
		modary = name[i].chars
		modary.each_index{|x|
			if alpha.index(modary[x]) != nil
				modary[x] = alpha[alpha.index(modary[x])+1]
			end
		}
		modary[0] = modary[0].upcase
		name[i] = modary.join
		i += 1
	end
	return name
end

getnames = true
code_hash = {}
while getnames	
	puts "Enter spy name, or type 'quit' to quit."
	name = gets.chomp
	if name == "quit"
		getnames = false
	else
		codename = name.split
		codename[0], codename[1] = codename[1], codename[0]
		codename = consonant_change(vowel_change(codename)).join(" ").to_s
		code_hash.store(name, codename)
	end
end
code_hash.each{|key, value| puts "#{key} will go by the name #{value}."}
