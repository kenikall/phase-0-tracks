def search_array(ary, num) 
	i = 0
	while i <= ary.length-1
		if ary[i] == num
			return i
		end
		i += 1
	end 
	return nil
end

def fib (num)
 	i = 0
 	ray =[]
 	while i <= num-1
 		if i == 0 || i == 1
 			ray << i
 		else
 			ray<<ray[i-1]+ray[i-2]
 		end
 		i += 1
 	end
 	return ray
end

ary = [2, 3, 4, 5, 6, 7, 8, 9]
#p search_array(ary, 15)
p fib(100)