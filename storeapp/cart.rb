class Cart
  
   attr_reader :items
    
   include ItemConteiner::Manager
     
   def initialize
      @items = Array.new
   end
  
end