class Item

	def initialize
		@price=30
	end
	attr_reader :price, :weight
	attr_writer :price, :weight
end

item1 = Item.new
item2 = Item.new
item1.price=(1)
item2.price=(2)
puts item1.price
puts item2.price
#puts "Результат ="+item1.myfun(2,3).to_s
#puts "Результат ="+item1.arpr.to_s



