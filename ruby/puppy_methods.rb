class Puppy
  
  def initialize
    puts "Initializing new puppy instance ..."
  end
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(int)
    int.times {puts "Woof!"} 
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(human_years)
    dog_years = human_years * 7
    dog_years
  end
  
  
  
end

# duchess = Puppy.new
# fido = Puppy.new
# spot = Puppy.new

# fido.fetch("bone")
# spot.speak(3)
# duchess.roll_over
# p fido.dog_years(4)

class Baseball_Player
  def initialize
    puts "Created new player."
  end
  
  def era(runs, innings)
    avg =(runs/innings.to_f * 9).round(2)
    puts "ERA is #{avg}."
    avg
  end
  
  def home_run?(distance)
    if distance >= 400
      puts "It's a homerun of #{distance} feet!"
      true
    else
      puts "not a home run only #{distance} feet."
      false
    end
  end
  
end

pitcher = Baseball_Player.new
hitter = Baseball_Player.new
p pitcher.era(5,7) 

p hitter.home_run?(300)

players =[]


50.times do
  |x| players[x] = Baseball_Player.new
  players[x].era(rand(10),rand(1..9))
  players[x].home_run?(rand(500))
  
end
