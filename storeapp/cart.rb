class Cart

   attr_reader :items

   include ItemConteiner

   def initialize(owner)
      @items = Array.new
      @owner = owner
   end

   def save_to_file
     File.open("#{@owner}_cart.txt","a") do |f|
         @items.each do |i| 
	    if  i.class==RealItem 
		f.puts "#{i.name}:#{i.price}:#{i.weight}"#cup:101:250
	    else 
		f.puts "#{i.name}:#{i.price}:NoWeightForVirtual"
	    end#if
	end#di_i
     end#do_f
   end#def

   def read_from_file
     return unless File.exist?("#{@owner}_cart.txt")
     item_fields = File.readlines("#{@owner}_cart.txt")#"cup:101:250\n"
     item_fields.map! {|i| i.chomp }
     item_fields.map! {|i| i.split(":") }
     item_fields.each {|i| @items<<RealItem.new(name:i[0],price:i[1].to_f, weight:i[2].to_f)}
     @items.uniq!
   end

end
