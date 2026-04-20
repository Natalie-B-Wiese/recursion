require_relative '../lib/recursion'
describe 'MergeSort' do
  context 'empty array' do
    it 'returns the empty array' do
      result = merge_sort([])
      expect(result).to eq([])
    end
  end
  context 'an array with one item' do
    it 'returns the array with the one item' do
      result = merge_sort([73])
      expect(result).to eq([73])
    end
  end

  context 'on sorted array' do
    it 'returns the original array' do
      result = merge_sort([1, 2, 3, 4])
      expect(result).to eq([1, 2, 3, 4])
    end
  end

  context 'on unsorted array with even number of items' do
    it 'sorts the array' do
      result = merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
      expect(result).to eq([0, 1, 1, 2, 3, 5, 8, 13])
    end
  end

  context 'on unsorted array with odd number of items' do
    it 'sorts the array' do
      result = merge_sort([3, 1, 5, 7, 1])
      expect(result).to eq([1, 1, 3, 5, 7])
    end
  end
end
