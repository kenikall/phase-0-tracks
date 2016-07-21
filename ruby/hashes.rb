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
	puts "What is #{customer[:honorific]} #{customer[:name][-1]}'s address?"
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
