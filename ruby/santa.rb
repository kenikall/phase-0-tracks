class Santa

	def initialize (gender, ethnicity)
		puts "Initializing Santa instance ..."
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
		return @age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.remove(reindeer)
		return @reindeer_ranking<<reindeer
	end

	#GETTERS
	def age
		return @age
	end

	def ethnicity
		return @ethnicity
	end 

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
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas.length.times{|x| 
	rand(20).times {santas[x].celebrate_birthday}
	santas[x].id_santa 
	puts "I am #{santas[x].age} old"
}
	