require_relative '../cart'
require_relative '../prices'
require_relative '../shopping_list'

describe Cart do

	price_list = "orange = 10p apple = 20p bread = £1.10 tomato = 25p cereal = £2.34"

	prices = Prices.new(price_list)

	subject { described_class.new(prices) }

	it 'adds items to the cart' do
		items = ['orange', 'apple']
		subject.add_items!(*items)

		expect(subject.items).to eq(items)
	end

	it 'removes items from the cart' do
		items = ['orange', 'orange', 'orange']
		subject.add_items!(*items)

		expect(subject.items).to eq(items)

		subject.remove_items!('orange','orange')

		expect(subject.items).to eq(['orange'])
	end


	context 'the list of items contains items that all have prices' do
		it 'calculates a total for all items in the cart' do
			expect(subject.total).to eq(0)

			subject.add_items!('orange', 'apple')

			expect(subject.total).to eq(0.30)
		end
	end

	context 'the list of items contains an item with no price' do
		it 'doesnt calculate invalid items in the total' do
			expect(subject.total).to eq(0)

			subject.add_items!('orange', 'orangutan', 'apple')

			expect(subject.total).to eq(0.30)
		end
	end


end