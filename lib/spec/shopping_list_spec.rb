require_relative '../shopping_list'

describe ShoppingList do

list = <<LIST
 list
 orange
 apple
 apple
 orange
 tomato
 cereal
 bread
 orange
 tomato
LIST

	subject { described_class.new(list) }

	it 'parses a multiline string into an array' do
		expect(subject).to eq(['list',
								'orange',
								'apple',
								'apple',
								'orange',
								'tomato',
								'cereal',
								'bread',
								'orange',
								'tomato'])
	end

end