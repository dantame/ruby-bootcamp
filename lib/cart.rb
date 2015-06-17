class Cart
	attr_reader :items
	attr_reader :total

	def initialize prices
		@prices = prices
		@items = []
		@total = 0
	end

	def add_items! *items
		@items.push *items

		@total = calculate_total

		return @items
	end

	def remove_items! *items
		items.each do |item|
			@items.delete_at @items.index(item)
		end

		@total = calculate_total

		return @items
	end

	private

	def calculate_total
		@items.inject(0) do |sum, item|
			sum += @prices[item] if @prices.key?(item)
			sum
		end
	end
end