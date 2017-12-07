require 'benchmark'

arr = [2,3,4,5,6,7,8,9]
tar = 17

# Brute Force
# The time complexity for this method is O(n^2). 
# We iterate through the array, then compare each value to a 
# second loop through the array searching for the complement.
# The space complexity for this method is O(1).
def brute_force_two_sum(array, target)
  indexes = []
  array.each.with_index do |n1, index1|
    array.each.with_index do |n2, index2|
      indexes.push(index1) if target - n1 == n2 && index1 != index2
    end
  end
  indexes
end

# Benchmark test
puts 'brute_force_two_sum'
puts Benchmark.measure{brute_force_two_sum(arr, tar)}

# Map elements and indexes to a hash, then iterate through the array
# The time complexity for this method is O(n)
# We map each element of the array and its index to the hash.
# Then we loop through the array and check if the complement 
# of each element exists in the hash. The time complexity for each lookup in 
# the hash is O(1).
# The space complexity is O(n)
# n is the amount of elements stored in the hash.
def map_then_iterate_two_sum(array, target)
    hash = {}
    array.each.with_index do |i, index|
        hash[i] = index
    end
    indexes = []
    array.each.with_index do |ii, index|
        complement = target - ii 
        if hash.has_key?(complement) && hash.fetch(complement) != index
            indexes.push(index, hash.fetch(complement))
            return indexes
        end
    end
end

puts 'map_then_iterate_two_sum'
puts Benchmark.measure{map_then_iterate_two_sum(arr, tar)}

# Loop through the array and insert elements into the hash within the same loop.
# The time complexity for this is O(n)
# In this method, we create an empty hash, loop through the array,
# identify each elements complement, look up the complement in the hash,
# then map the element and the index to the hash. We map the element and index last
# because we want to find the first complement to the element, but if we mapped first, 
# the element would already exist in the hash.
# The space complexity is O(n)
def one_pass_two_sum(array, target)
  hash = {}
  array.each.with_index do |i, index|
    complement = target - i
    if hash.has_key?(complement)
      return [hash.fetch(complement), index]
    end
    hash[i] = index
  end
end

puts 'one_pass_two_sum'
puts puts Benchmark.measure{one_pass_two_sum(arr, tar)}

