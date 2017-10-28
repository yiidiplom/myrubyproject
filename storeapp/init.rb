require_relative "item_conteiner"
require_relative "cart"
require_relative "order"
require_relative "item"
require_relative "real_item"
require_relative "virtual_item"

@items = []
@items << VirtualItem.new({:price=>101,:weight=>250,:name=>"cup"})
@items << RealItem.new({:price=>250,:weight=>450,:name=>"car"})
@items << RealItem.new({:price=>750,:weight=>150,:name=>"per"})


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
