def brute_force_two_sum(array, target)
  indexes = []
  array.each.with_index do |n1, index1|
    array.each.with_index do |n2, index2|
      indexes.push(index1) if n1 + n2 == target && index1 != index2
    end
  end
  indexes
end






