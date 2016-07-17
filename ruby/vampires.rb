birthValidinput = false
garlicValidinput = false

puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
puts "What year were you born"
birthYear = gets.chomp

until garlicValidinput
  puts "Have you had your birthday this year?"
birthdayThisYear = gets.chomp
  if birthdayThisYear == "y" || birthdayThisYear == "yes" || birthdayThisYear == "Y" || birthdayThisYear == "Yes"
    gBread = true
    garlicValidinput = true
  elsif birthdayThisYear == "n" || birthdayThisYear == "no" || birthdayThisYear == "N" || birthdayThisYear == "No"
    gBread = false
    garlicValidinput = true
  else
    puts "Please answer yes or no."
  end
end


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
puts "Would you like to enroll in health insurance?"
hInsurance = gets.chomp