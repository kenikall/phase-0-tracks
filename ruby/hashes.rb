puts "Interior Decor Customer Survey".center(50, "* ")
customer = {}

puts "What is the customer's name?"
customer[:name] =gets.chomp.split
puts "Mr., Mrs., Ms., or other?"
customer[:honorific] = gets.chomp
	if customer[:honorific].downcase.strip == "mr" || customer[:honorific].downcase.strip == "mr."
		customer[:honorific] ="Mr."
	elsif customer[:honorific].downcase.strip == "mrs" || customer[:honorific].downcase.strip == "mrs."
		customer[:honorific] ="Mrs."		
	elsif customer[:honorific].downcase.strip == "ms" || customer[:honorific].downcase.strip == "ms."
		customer[:honorific] = "Ms."
	else
	validhonorific = false	
		until validhonorific
			puts "What honorific would you like?"
			customer[:honorific] = gets.chomp
			puts "Is #{customer[:honorific]} the honorific you would like?"
			yn = gets.chomp
			if yn[0].downcase == "y"
				validhonorific = true
			end
		end
	end
puts "Thank you #{customer[:honorific]} #{customer[:name][-1]}"

validaddress = false
until validaddress 
	puts "Where is the house #{customer[:honorific]} #{customer[:name][-1]} would like to decorate?"
		address = { name: customer[:name]}
	puts "Street?"
		address[:street] = gets.chomp
	puts "City?"
		address[:city] = gets.chomp
	puts "State?"
		address[:state] = gets.chomp
	puts "Zipcode?"
		address[:zip] = gets.chomp
	customer[:address] = address

	puts "#{customer[:honorific]} #{customer[:name][-1]}'s mailing address is:"
	puts "#{customer[:name].join.to_s}"
	puts "#{customer[:address][:street]}"

	puts "#{customer[:address][:city]}, #{customer[:address][:state]}  #{customer[:address][:zip]} "
	puts "Is this correct?"

	yn = gets.chomp
	if yn[0].downcase == "y"
		validaddress = true
	end
end

styles = {
	cozy: false,
	light: false,
	charming: false,
	classic: false,
	comfortable: false,
	distinctive: false,
	glamorous: false,
	luxurious: false,
	stylish: false
}
validstyles = false
#until validstyles
	puts "Chose the numbers that describe your dream home"
	puts "  1. cozy       2. light         3. charming"
	puts "  4. classic    5. comfortable   6. distinctive"
	puts "  7. glamorous  8. luxurious     9. stylish"

	customer[:styles] = gets.chomp.split

	customer[:styles].each{ |x|
		if x == "1"
			styles[:cozy] = true
		elsif x == "2"
			styles[:light] = true
		elsif x == "3"
			styles[:charming] = true
		elsif x == "4"
			styles[:classic] = true
		elsif x == "5"
			styles[:comfortable] = true
		elsif x == "6"
			styles[:distinctive] = true
		elsif x == "7"
			styles[:glamorous] = true
		elsif x == "8"
			styles[:luxurious] = true
		elsif x == "9"
			styles[:stylish] = true
		else
			puts "#{x} was not recognized. Pease enter only numers 1 - 9"
		end
 		}
	ary = []
	styles.each_value{|x| 
		if x 
			ary << key
		end
	}
 	puts "Your dream home will be #{ary.join(", ").to_s}."
#end
