
 def search_array(ary, num) #take an array and target number
   i = 0  #intitialize an incrementor to 0
   while i <= ary.length-1 #run loop for every element in the array
     if ary[i] == num #if the target is identified 
       return i # return where in the array the target was
     end
     i += 1 #increment the counter
   end 
   return nil #if tagete is not found return nil
 end
 
#Calculate Fibonacci Sequence
 def fib (num)
    i = 0
#Create empty array
    ray =[]
#When numbers are 0 or 1, return itself and place into array
    while i <= num-1
      if i == 0 || i == 1
        ray << i
      else
#From current position in sequence, add previous number and number before that to get new value
        ray<<ray[i-1]+ray[i-2]
      end
#Increase counter      
      i += 1
    end
#Show array   
    return ray
 end

def bubble_sort(array) # Takes in an array
#Define length of array
  n = array.length
#Create loop to run through entire array  
  loop do
#Set state of sorting to false    
    swapped = false
#Start loop from beginning of array
    (n-1).times do |i|
#Swap if first value is greater than second value    
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
#Set state of sorting to true        
        swapped = true
      end
    end
#Stop loop when nothing needs to be sorted
    break if not swapped
  end

  array
end

=begin
- Create method to sort numbers (number_sort)
- Create empty array to place new order 
- Run through every single number at position 0
- Check against previous values already sorted to determine new position

#Takes in an array
#Define length of array
#Create loop to run through entire array    
#Set state of sorting to false  
#Start loop from beginning of array
#Check each value of array in pairs.
#Swap if first value is greater than second value
#Set state of sorting to true
#Keep looping through array until first value is no longer greater than second value
#Stop loop when nothing needs to be sorted
=end


# ary = [0, 3, 4, -7, -12]
# p search_array(ary, 15)
# check_ary =  fib(100)
#if check_ary[-1] == 218922995834555169026
#  p"Success!!"
#end
#p bubble_sort(ary)      
      