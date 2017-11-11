require_relative "string"
require_relative "item_conteiner"
require_relative "item"
require_relative "real_item"
require_relative "virtual_item"
require_relative "antique_item"
require_relative "cart"
require_relative "order"


@items = []
@items << VirtualItem.new({:price=>101,:weight=>250,:name=>"cup"})
@items << RealItem.new({:price=>250,:weight=>450,:name=>"car"})
@items << RealItem.new({:price=>750,:weight=>150,:name=>"per"})
@items << AntiqueItem.new({:price=>750,:weight=>150,:name=>"gel"})

cart = Cart.new("ROman")
cart.add_item RealItem.new({:price=>150,:weight=>350,:name=>"car"})
cart.add_item RealItem.new({:price=>250,:weight=>450,:name=>"car"})
cart.add_item RealItem.new({:price=>350,:weight=>550,:name=>"asd"})

method = "all_cars"
puts cart.send(method)

puts @items[0].send(:price)
puts @items[0].price
puts @items[0].send(:tax)
#puts @items[0].tax


puts @items[0].kind_of?(Item)#true
puts @items[0].kind_of?(VirtualItem)#true
puts @items[0].kind_of?(RealItem)#false

puts @items[0].class == Item #false
puts @items[0].class == VirtualItem #true

puts @items[0].respond_to?(:price)#true
puts @items[0].respond_to?(:other_method)#false


#puts @items[0].class == VirtualItem


# item1 = VirtualItem.new({:price=>101,:weight=>250,:name=>"Proga"})
# item2 = RealItem.new({:price=>250,:weight=>450,:name=>"Butter"})
# item3 = RealItem.new({:price=>50,:weight=>150,:name=>"Meat"})
#
# cart = Cart.new
# cart.add_item(item1)
# cart.add_item(item2)
# cart.add_item(item3)
# #cart.remove_item
#
# order = Order.new
# order.add_item(item1)
# order.add_item(item2)
# order.add_item(item3)
#order.remove_item

#puts "Do :"
#p cart.items
#cart.delete_invalid_items
#puts "Posle :"
#p cart.items

#p item1.respond_to?(:weight)
#p item2.respond_to?(:weight)

#puts Item.discount

#puts "price = #{item1.price}"
#puts "real_price = #{item1.real_price}"

# puts "How many in cart = #{cart.items.size}"
# puts "How many in order = #{order.items.size}"
#
# puts "CountV for order #{order.count_valid_items}"
