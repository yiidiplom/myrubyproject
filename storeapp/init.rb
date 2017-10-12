require_relative "cart"
require_relative "item"

item1 = Item.new({:price=>10,:weight=>250,:name=>"Bread"})
item2 = Item.new({:weight=>350,:name=>"Butter"})
cart = Cart.new
cart.add_item(item1)
cart.add_item(item2)

puts "Do :"
p cart.items
cart.delete_invalid_items
puts "Posle :"
p cart.items

