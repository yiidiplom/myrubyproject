require_relative "cart"
require_relative "item"

cart = Cart.new
cart.add_item(Item.new)

p cart
cart.add_item(Item.new)
p cart
cart.remove_item
p cart

cart.remove_item
p cart