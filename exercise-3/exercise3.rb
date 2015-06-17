def compute_fibbonaci(limit)
	arr = Array.new(limit)

	arr[0], arr[1] = 0, 1

	arr.each_index do |i|
		arr[i+1] = (arr[i-1] + arr[i]) if i < (arr.length - 1) && i > 0
	end
end

puts compute_fibbonaci(100)