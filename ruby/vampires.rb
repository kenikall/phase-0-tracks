def greetings
	runloop = true
	i = 0
	ary=[]
	while runloop
		puts "Who would you like to greet? If you are done type stop."
		ary[i] = gets.chop
		if ary[i] == "stop"
			runloop = false;
	end
	
	yield (ary)
	
end

greetings {|x| puts "Welcome #{x}!"}