require_relative "store_application"

puts StoreApplication.new ==StoreApplication.new
p StoreApplication.new 
@items = []
@items << RealItem.new({:price=>101,:weight=>250,:name=>"cup"})
@items << AntiqueItem.new("car",price:1250,weight:950)
@items << RealItem.new({:price=>750,:weight=>150,:name=>"per"})

@items.each {|i| puts i.name}

#@items << AntiqueItem.new({:price=>750,:weight=>150,:name=>"gel"})

cart = Cart.new("ROman")
cart.add_item RealItem.new({:price=>150,:weight=>350,:name=>"car"})
cart.add_item RealItem.new({:price=>250,:weight=>450,:name=>"car"})
cart.add_item RealItem.new({:price=>350,:weight=>550,:name=>"asd"})

method = "all_cars"
puts cart.send(method)
