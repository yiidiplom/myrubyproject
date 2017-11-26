require_relative "store_application"


 StoreApplication.config do |app|
    app.name         = "My store"
    app.environment  = :production

    app.admin do |admin|
      admin.email                 = "admin@mystore.com"
      admin.login                 = "admin"
      admin.send_info_emails_on  :mondays
   end
end

p StoreApplication.environment
p StoreApplication.name
p StoreApplication::Admin.login
p StoreApplication::Admin.email
#p StoreApplication.admin.send_info_emails_on()


@items = []
<<<<<<< HEAD
@items << VirtualItem.new({:price=>101,:weight=>250,:name=>"cup"})
@items << RealItem.new({:price=>250,:weight=>450,:name=>"car"})
@items << RealItem.new({:price=>150,:weight=>150,:name=>"per"})


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
=======
@items << RealItem.new({:price=>101,:weight=>250,:name=>"cup"})
@items << AntiqueItem.new("car",price:1250,weight:950)
@items << RealItem.new({:price=>750,:weight=>150,:name=>"per"})

#@items.each {|i| puts i.name}

#@items << AntiqueItem.new({:price=>750,:weight=>150,:name=>"gel"})

cart = Cart.new("ROman")
cart.add_item RealItem.new({:price=>150,:weight=>350,:name=>"car"})
cart.add_item RealItem.new({:price=>250,:weight=>450,:name=>"car"})
cart.add_item RealItem.new({:price=>350,:weight=>550,:name=>"asd"})

#method = "all_cars"
#puts cart.send(method)
>>>>>>> 7c58a179524b86df6fa5d9ecf6cab84efe229ca9
