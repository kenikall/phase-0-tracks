module Shout
  # def self.yell_angrily(words)
  #   words + "!!!" + " :("
  # end

  # def self.yelling_happily(affirmation)
  # 	affirmation + " <3" + " :D"
	def play_shout (dbs)
  		if dbs > 100
  			15.times{puts "A little bit softer now"}
  		else
  			12.times{puts "A little bit louder now"}
  		end
  	end			
end 

class Bar_mitzvah
  	include Shout
end

class School_dance
	include Shout
end

homecoming = School_dance.new
homecoming.play_shout(150)

martys_party = Bar_mitzvah.new
martys_party.play_shout(60) 