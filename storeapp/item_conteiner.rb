module ItemConteiner
   module Manager
      def add_item(item)
        @items.push(item)
       end
       
       def remove_item
        @items.pop
       end
       
       def validate
      @items.each{|i| puts "Item has no price" if i.price.nil?}
       end
       
        def delete_invalid_items
      @items.delete_if {|i| i.price.nil?}
       end
   end
    
 module Info
    def count_valid_items
        @items.count {|i| i.price} 
    end
 end
 
 
end