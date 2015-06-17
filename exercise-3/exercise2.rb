def combine_lists(arr1, arr2)
 [arr1, arr2].transpose if arr1.length == arr2.length
end

puts combine_lists(['a','b','c'], [1,2,3])