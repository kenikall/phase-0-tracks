puts "Interior Decor Customer Survey".center(50, "* ")
customer = {}

puts "What is the customer's name?"
customer[:name] =gets.chomp.split
p customer[:name] 

puts "What is the customer's street?"
	address = { name: customer[:name]}
	address[:street] = gets.chomp
puts "What is the customer's city?"
	address[:city] = gets.chomp
puts "What is the customer's state?"
	address[:state] = gets.chomp
puts "What is the customer's zipcode"
	address[:zip] = gets.chomp
customer[:address] = address
p customer[:address][:city]