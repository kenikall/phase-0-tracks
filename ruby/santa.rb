class Santa
attr_reader :gender, :reindeer
attr_accessor :ethnicity, :age 

	def initialize (gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end 
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!" 
	end 

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
	end

	def id_santa
		puts "Hello, I am a #{@ethnicity}, #{@gender} Santa."
	end
	
	def celebrate_birthday
		puts @age
		return @age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		return @reindeer_ranking<<reindeer
	end

	#GETTERS that we no longer need
	# def age
	# 	return @age
	# end

	# def ethnicity
	# 	return @ethnicity
	# end 

	#SETTERS
end

# #DRIVER CODE
# nick = Santa.new
# nick.speak
# nick.eat_milk_and_cookies("Oreo")

santas = []
reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
cookies = ["Chocolate Chips", "Oatmeal Raisin", "Chocolate Decadence", "Peanut Butter", "Peanut Butter Milk Chocolate"]
1.times do |i|
  santas << Santa.new(example_genders[rand(6)], example_ethnicities[rand(6)])
end

santas.length.times{|x| 
	rand(140).times {santas[x].celebrate_birthday}
	puts "I am a #{santas[x].ethnicity}, #{santas[x].gender} santa who is #{santas[x].age} years old"
	if santas[x].age>100
		rand_reindeer=reindeer[rand(8)]
		puts "I'm mad at #{rand_reindeer} my favorites are now #{santas[x].get_mad_at(rand_reindeer)}"
	elsif santas[x].age<=20
		santa[x].speak
	elsif santas[x].age>40 &&santas[x].age<80
		santas[x].eat_milk_and_cookies(cookies[rand(4)])
	end
}
	