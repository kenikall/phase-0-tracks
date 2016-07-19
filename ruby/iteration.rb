def method_name
     nums = [1,2,3,4,5]
     letters = ["a", "b", "c", "d", "e"]
     big_arr = [nums, letters]
     big_arr.each { yield }
end

method_name { |arr| arr.each { |x| puts x } }

myArray = ["Embarcadero", "Civic Center", "Mission 16th st", "Mission 24th st", "Bay View"]
myHash = { "Pierce Brosnan" => 2001, "Sean Connery" => 1975, "George Lazenby" => 1961, "Roger Moore" => 1963 }

myArray.each { |stop| puts "Coming up, #{stop} Station!!" }
myHash.each { |actor, year| puts "#{actor} started playing Bond in #{year}" }

myArray.map! { |stop| stop.upcase }
myHash = myHash.map { |actor, year| [actor.downcase, year]}

puts myArray.inspect
puts myHash.inspect

sampleArr = [1, 2, 3, 4, 5, 1, 2, 0]
sampleHash = { "A" => "aardvark", "B"=> "bear", "C"=> "cheetah", "D"=> "deer" }

sampleArr.delete_if { |x| x < 3 }
puts sampleArr.inspect

sampleHash.delete_if { |letter, animal| animal[0] < "c" }
puts sampleHash.inspect

puts sampleArr.inspect
puts sampleArr.select { |num| num % 2 == 0 }.inspect
puts sampleArr.inspect

puts sampleHash.inspect
puts sampleHash.select { |letter, animal| animal.include?("e") }
puts sampleHash.inspect

puts sampleArr.inspect
puts sampleArr.keep_if { |x| x >= 3 }.inspect
puts sampleArr.inspect

puts sampleHash.inspect
puts sampleHash.keep_if { |letter, animal| animal.include?("ea") }.inspect
puts sampleHash.inspect

puts sampleArr.inspect
puts sampleArr.take_while { |x| x <= 2}.inspect
puts sampleArr.inspect 

puts sampleHash.inspect
puts sampleHash.reject { |letter, animal| animal.include?("aa") }.inspect
puts sampleHash.inspect