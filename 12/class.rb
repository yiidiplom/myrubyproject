class Item

	def price
		@price
	end

	def price=(price_value)
		@price=price_value
	end
	
=begin
	def myfun(x,y)
		return x+y
	end
	def arpr
		arr = []
		if arr.empty?
    		return "empty"
		else
    	return  "not empty"
		end
	end
=end
end

item1 = Item.new
#puts "Результат ="+item1.myfun(2,3).to_s
#puts "Результат ="+item1.arpr.to_s



