class Cart
	attr_reader :items

	def initialize prices
		@prices = prices
		@items = []
	end

	def add_items! *items
		@items.push *items
	end

	def remove_items! *items
		items.each do |item|
			@items.delete_at @items.index(item)
		end
	end

	def total
		@items.inject(0) do |sum, item|
			sum += @prices[item] if @prices.key?(item)
			sum
		end
	end
end