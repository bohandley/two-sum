require 'benchmark'

# Brute Force
# The time complexity for this method is O(n^2). 
# We iterate through the array, then compare each value to a 
# second loop through the array searching for the complement.
def brute_force_two_sum(array, target)
  indexes = []
  array.each.with_index do |n1, index1|
    array.each.with_index do |n2, index2|
      indexes.push(index1) if target - n1 == n2 && index1 != index2
    end
  end
  indexes
end

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






