def is_number?(obj)
    return obj.to_s == obj.to_i.to_s
end

ageValidinput = false
birthValidinput = false
garlicValidinput = false
healthValidinput = false

puts "What is your name?"
name = gets.chomp

until ageValidinput
	puts "How old are you?"
	age = gets.chomp
	if is_number?(age) 
		ageValidinput = true
	else
		puts "Please enter an interger."
	end
end
age = age.to_i

until birthValidinput
	puts "What year were you born"
	birthYear = gets.chomp
	if is_number?(birthYear) 
		birthValidinput = true
	else
		puts "Please enter an interger."
	end
end
realAge = 2016 - birthYear.to_i
realAge = realAge.to_i

until garlicValidinput
  puts "Should we save you some garlic bread?"
  gBread = gets.chomp
  if gBread == "y" || gBread == "yes" || gBread == "Y" || gBread == "Yes"
    gBread = true
    garlicValidinput = true
  elsif gBread == "n" || gBread == "no" || gBread == "N" || gBread == "No"
    gBread = false
    garlicValidinput = true
  else
    puts "Please answer yes or no."
  end
end

until healthValidinput
	puts "Would you like to enroll in health insurance?"
	hInsurance = gets.chomp	
	
	if hInsurance == "y" || hInsurance == "yes" || hInsurance == "Y" || hInsurance == "Yes"
    	hInsurance = true
    	healthValidinput = true
  	elsif hInsurance == "n" || hInsurance == "no" || hInsurance == "N" || hInsurance == "No"
    	hInsurance = false
    	healthValidinput = true
  	else
    	puts "Please answer yes or no."
  	end
end


if name == "Drake Cula" ||name == "Tu Fang"
	p "Definitely a vampire."
elsif realAge == age
	if gBread || hInsurance
		p "Probably not a vampire."
	else
		p "Results inconclusive."
	end 
elsif realAge != age 
	if gBread || hInsurance
		p "Probably a vampire."
	else 
		p "Almost certainly a vampire."
	end
else
	p "Results inconclusive."
end
	
