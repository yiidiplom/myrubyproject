class Cart

   attr_reader :items

   include ItemConteiner
   class ItemsNOTSupported<StandardError; end

   UNSUPPORTED_ITEMS = [AntiqueItem,VirtualItem]

   def initialize(owner)
      @items = Array.new
      @owner = owner
   end

   def save_to_file
     File.open("#{@owner}_cart.txt","a") do |f|
<<<<<<< HEAD
       do |i|
         if @items.i.respond_to?(:weight)
           f.puts "#{i.weight}"         #f.puts "#{i.name}:#{i.price}:#{i.weight}"}
        end
      end#do2
       #cup:101:250
      ##  unless @items.each.is_a?(VirtualItem) {f.puts "true"} ###{|i| f.puts "#{i.name}:#{i.price}:'NOWEIGHT'"}
      ##    else
      ##       @items.each {|i| f.puts "#{i.name}:#{i.price}:#{i.weight}"}
      ##    end
    end#do1
   end#def


=======
         @items.each  do |i|
            raise ItemsNOTSupported if UNSUPPORTED_ITEMS.include?(i.class)
         f.puts i
         end #do_i

     end#do_f
   end#def
>>>>>>> 7c58a179524b86df6fa5d9ecf6cab84efe229ca9

   def read_from_file
      File.readlines("#{@owner}_cart.txt").each {|i| @items << i.to_real_item}
      @items.uniq!
   rescue Errno::ENOENT
      File.open("#{@owner}_cart.txt","w")
      puts "File  #{@owner}_cart.txt was created "
  end

end
