# SPECIES ----------------------
# varies

# CHARACTERISTICS --------------
# weight: varies
# hair length: varies
# color: varies

# BEHAVIOR ---------------------
# fetch
# chew
# obey

class Puppy
end

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

p "spot.class = #{spot.class}"
p "duchess == fido = #{duchess == fido}"
p "fido.instance_of?(Array)  = #{fido.instance_of?(Array)}"
p "fido.instance_of?(Puppy) = #{fido.instance_of?(Puppy)}"
p "spot.play_dead = #{spot.play_dead}"