require_relative 'two_sum'

describe 'two_sum' do 
    array1 = [3,4,5,7]
    target1 = 9

    array2 = [5,5]
    target2 = 10
  describe 'brute_force_two_sum' do

    it 'takes an array of numbers and a target, then returns the indexes of the first two elements that equal the target when added' do
      expect(brute_force_two_sum(array1, target1)).to eq [1,2]
    end

    it 'returns the indexes if the elements are repeated' do
      expect(brute_force_two_sum(array2, target2)).to eq [0,1]
    end
  end
  
end