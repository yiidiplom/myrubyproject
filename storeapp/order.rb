class Order

   attr_reader :items
   
   include ItemConteiner::Manager
   include ItemConteiner::Info
   
   def initialize
      @items = Array.new
   end

end