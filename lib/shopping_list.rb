class ShoppingList < Array
	def initialize input
		super input.lines.map(&:strip)
	end
end