class LinkedListItem
  attr_reader :next_list_item
  attr_reader :payload
  include Comparable

  def <=> other
    self.payload<=>other.payload
  end


  def initialize (payload)
      @payload=payload
  end

  def next_list_item= (linked_list_item)
      if linked_list_item == self
          raise ArgumentError
          end
           @next_list_item=linked_list_item
  end

  def last?
      @next_list_item.nil?
      # or:
      # !@next_list_item
      # or:
      # @next_list_item == nil
      # or:      
      # @nex_list_item ? false : true
      # or:     
      # if next_list_item
      #     false
      # else
      #     true
      # end
      end
      
end
