class Cart
  
   attr_reader :items
    
   include ItemConteiner
     
   def initialize
      @items = Array.new
   end
  
end