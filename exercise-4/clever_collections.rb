prices = {
      'orange' => 10,
      'apple' => 20,
      'bread' => 100,
      'tomato' => 25,
      'cereal' => 234
}

shopping_list = [:orange, :apple, :apple, :cereal, :bread]

#TODO - print out in pounds and pence the total for the shopping list

def calculate_total(shopping_list, prices)
	shopping_list.inject(0) do |sum, item|
		sum += prices[item.to_s]
	end
end

puts "The price of the shopping list is: £%.2f" % calculate_total(shopping_list, prices)