require 'linked_list_item'

class LinkedList
    attr_reader :first_item #allows first item to be readable or gettable
    attr_reader :size #allows size to readable or gettable

    def initialize *args #initialize instantiates determines methods and arguments that are present * means multiple
        @size=0 #create instance variable for size initialize
  end

    def add_item(payload) #defines add_item method with payload as the argument
        @size += 1 #increments
        if @first_item.nil? #if first_item is nil true or false
            @first_item = LinkedListItem.new(payload) #if it is not nil continue to create @first_item as LLI.new with payload
        else
            last_item = @first_item #the first item is also the last item
            while !last_item.last? #! - means while not last item from LLI
                last_item = last_item.next_list_item # make the last item if no next_list_item
        end
            last_item.next_list_item = LinkedListItem.new(payload) #add the new LLI to the end of list
        end
  end

    def get(n) #gets the item at index specified
      i = 0
        item = @first_item #initializing a local variable that will change as we loop
        while i < n #while iterator is less than requested index
            raise IndexError if item.nil? #reached the end of list
            item = item.next_list_item #move to next item
            i += 1 #increments the iterator
      end
        item.payload #returns the payload of last item found
  end
    
    def index(payload) #gets the item at index specified
        i = 0
        item = @first_item #initializing a local variable that will change as we loop
        while item #while conditional statement below is true for payload
            #or
            #while !item.nil?
            #or
            #until !item.nil?
            raise IndexError if item.nil? #reached the end of list
            match= i if payload == item.payload #match = increment if the payload from test = the payload of the item in the method loop 
            item = item.next_list_item #move to next item
            i += 1 #increments the iterator
        end
        match #the result of the matching index of payload
    end

    def last # defines last method will determine if item is last in list
        if size == 0 #if the list is empty
          return nil
      end
    last_item = @first_item
    until last_item.last?
         last_item=last_item.next_list_item
    end
      last_item.payload
  end

  def size
      return @size
      #or slow method for size BAD
      #item=@first_item
      #i=0
      #until item.nil?
      #i+=1
      #item.next_list_item
      #end
      #return i
      #end
  end

  def to_s
      if size == 0
          "| |"
          else
          items = []
          item = @first_item
        while item
            items << item.payload
            item = item.next_list_item
        end
        output = "| "
        output += items.join(", ")
        output += " |"     
      end
  end

  def swap(i)
    x=get(i)
    y=get(i+1)
    x.payload, y.payload = y.payload, x.payload
  end

  def sort!
    x=@first_item
    y=@next_list_item
    until no_swaps
      no_swaps=true
      i=0
      item=@first_item
      while i<n
        if x > y
          no_swaps=false
          swap(i)
        end
        i+=1
        item=item.next_list_item
      end
    end
  end


  # ========= Bonus ========== #

  #def [](payload)
  #end

  alias [] get

  def []=(n, payload)

  end

  def remove(n)
      
  end

  end



