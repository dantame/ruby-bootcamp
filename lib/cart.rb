class Cart < Array
	attr_reader :items
	attr_reader :total

	def initialize prices
		@prices = prices
		@total = 0
	end

	def add_items! *items
		self.push *items

		@total = calculate_total

		return self
	end

	def remove_items! *items
		items.each do |item|
			self.delete_at self.index(item)
		end

		@total = calculate_total

		return self
	end

	private

	def calculate_total
		self.inject(0) do |sum, item|
			sum += @prices[item] if @prices.key?(item)
			sum
		end
	end
end