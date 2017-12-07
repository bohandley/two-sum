# two-sum

This repository has been created to compare the time complexity of three methods to solve the challenge below.

> Given an array of integers, return indices of the two numbers such that they add up to a specific target.
> You may assume that each input would have exactly one solution, and you may not use the same element twice.

The three solutions are

  - brute force O(n^2)
  - mapping elements and indexes to a hash then iterating through the array O(n)
  - iterating and mapping in one pass O(n)
  
To see the time required for each method
- clone the repository
`git clone https://github.com/bohandley/two-sum.git`
- Using ruby, run two_sum.rb in the terminal
`ruby two_sum.rb`

To run the tests
- Using rspec, run two_sum_rspec.rb in the terminal
`rspec two_sum_spec.rb`
