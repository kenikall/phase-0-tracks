class TodoList
  
  def initialize (chores)
    @chores = chores
  end
  
  def get_items
    return @chores
  end

  def add_item(chore)
    return @chores << chore
  end

   def delete_item(chore)
    return @chores.delete(chore)
   end

    def get_item(i)
     return @chores[i]
  	end
  	
end