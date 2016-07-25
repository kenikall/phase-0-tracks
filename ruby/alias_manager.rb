=begin
Psudocode
1. Swap first and last name using split and  reassignment	

	
=end


puts "Enter spy name"
name = gets.chomp.split
name[0], name[1] = name[1], name[0] 
p name