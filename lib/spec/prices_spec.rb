require_relative '../prices'

describe Prices do

	price_list = "orange = 10p apple = 20p bread = £1.10 tomato = 25p cereal = £2.34"

	subject { described_class.new(price_list) }

	it 'parses a string into a hash' do
		expect(subject).to eq({"orange" => 0.10, "apple" => 0.20, "bread" => 1.10, "tomato" => 0.25, "cereal" => 2.34})
	end

end