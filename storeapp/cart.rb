class Cart

   attr_reader :items

   include ItemConteiner
   class ItemsNOTSupported<StandardError; end

   def initialize(owner)
      @items = Array.new
      @owner = owner
   end

   def save_to_file
     File.open("#{@owner}_cart.txt","a") do |f|
         @items.each  do |i|
            raise ItemsNOTSupported,"--Cart not supported VirtualItem --" if i.class == VirtualItem
         f.puts i
         end #do_i

     end#do_f
   end#def

   def read_from_file
      File.readlines("#{@owner}_cart.txt").each {|i| @items << i.to_real_item}
      @items.uniq!
   rescue Errno::ENOENT
      File.open("#{@owner}_cart.txt","w")
      puts "File  #{@owner}_cart.txt was created "
  end

end
