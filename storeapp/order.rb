class Order

   attr_reader :items
   
   include ItemConteiner
   

   def initialize
      @items = Array.new
      #...
   end
   def place
      #place
   end

end