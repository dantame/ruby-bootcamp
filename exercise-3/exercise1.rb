def for_sum(arr)
	sum = 0
	for i in arr do
		sum += i
	end
	sum
end

def while_sum(arr)
	arr = arr.clone # pop will destructively modify the passed in array so we clone it
	sum = 0
	while arr.length > 0 do
		sum += arr.pop
	end
	sum
end

def recursive_sum(sum = 0, arr)
	arr = arr.clone
	arr.length > 0 ? recursive_sum(sum += arr.pop, arr) : sum
end

test = [1,2,3,4,5]

puts for_sum(test)
puts while_sum(test)
puts recursive_sum(test)