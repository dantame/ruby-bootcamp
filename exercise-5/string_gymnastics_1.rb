require_relative '../lib/shopping_list'

prices = {
      'orange' => 10,
      'apple' => 20,
      'bread' => 100,
      'tomato' => 25,
      'cereal' => 234
} 

shopping_list=<<LIST
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

=begin
Given the following price list and shopping list print out the total cost of 
the shopping list in pounds and pence
=end 

def calculate_total(shopping_list, prices)
	ShoppingList.new(shopping_list)
		.inject(0) do |sum, item|
			sum += prices[item] if prices.key?(item)
			sum
		end
end

puts "The price of the shopping list is: £%.2f" % calculate_total(shopping_list, prices)
