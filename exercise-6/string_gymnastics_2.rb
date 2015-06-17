require_relative '../lib/shopping_list'
require_relative '../lib/prices'
require_relative '../lib/cart'

price_list = "orange = 10p apple = 20p bread = £1.10 tomato = 25p cereal = £2.34" 

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

list = ShoppingList.new(shopping_list)

prices = Prices.new(price_list)

cart = Cart.new(prices)

cart.add_items! *list

puts "The price of the shopping list is: £#{cart.total}"