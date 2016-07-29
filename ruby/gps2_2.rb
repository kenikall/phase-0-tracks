# input: string of items separated by spaces
def create_list(string) # Method to create a list that takes string 
  list = {} # Create empty hash
  string = string.split # Split string by spaces in an array
  
  string.each{|item| list[item] = 1} # iterate through array making every element a key in the hash assign a beginning value of 1 for each key
  
  print_list(list)  # print the list to the console 
  return list  # return list as a hash
end

# Method to add an item to a list
def add_item(list, item, qty=1)  # input: hash list, item name (as string) and optional quantity (defaults to 1)
  list[item] = qty # add item and qty to hash
  #print_list(list) #for testing
  return list # output: hash
end

# Method to remove an item from the list
def remove_item(list, item) # input: Hash and Item (key) to be removed 
  list.delete(item) # steps: Identify input with element in hash & remove it
  #print_list(list) #for testing
  return list # output: updated hash
end 

# Method to update the quantity of an item
def change_qty(list, item, qty)# input: Hash, Item to be updated, number to change the quantity to
  list[item] = qty # steps: Identify input with element in hash and update quantity
  #print_list(list)#for testing
  return list # output: Updated hash
end

# Method to print a list and make it look pretty
def print_list(list) # input: Hash
  list.each{|item, qty| puts "#{item}, qty: #{qty}"} 
  puts ""
# steps: Iterate through hash adding labels and provide formatting
# since puts returns nil output = nil
end

#DRIVER CODE
# list = create_list("carrots apples cereal pizza")
# list = add_item(list, "Lemonade", 2)
# list = add_item(list, "Onions")
# list = add_item(list, "Tomatoes")
# list = add_item(list, "Ice Cream")
# list = change_qty(list, "Tomatoes", 3)
# list = change_qty(list, "Ice Cream", 4)
