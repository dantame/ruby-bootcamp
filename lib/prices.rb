class Prices < Hash
	def initialize input
		super
		
		parsed_data = input
						.scan(/(\w+) = £?([\d+\.]+)p?/)
						.map { |arr| [arr[0], convert_to_price(arr[1])] }
						.to_h

		self.update(parsed_data)
	end

	private

	def convert_to_price string_price
		string_price.delete('.').to_f / 100
	end
end