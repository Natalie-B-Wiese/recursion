require_relative '../lib/fibonacci'
describe 'Fibbonnacci exercises' do
  context 'non-recursive' do
    it 'returns an array' do
      result = fibs(1)
      expect(result).to be_an(Array)
    end

    it 'return an array of the correct length' do
      result = fibs(2)
      expect(result.length).to eq(2)
    end

    it 'the first item is 0' do
      result = fibs(1)
      expect(result[0]).to eq(0)
    end

    it 'the second item is 1' do
      result = fibs(3)
      expect(result[1]).to eq(1)
    end

    it 'the third item is 1' do
      result = fibs(3)
      expect(result[2]).to eq(1)
    end

    it 'returns the correct 4 fibonnacci number sequence' do
      result = fibs(4)
      desired_array = [0, 1, 1, 2]
      expect(result).to eq(desired_array)
    end

    it 'returns the correct 8 fibonnacci number sequence' do
      result = fibs(8)
      desired_array = [0, 1, 1, 2, 3, 5, 8, 13]
      expect(result).to eq(desired_array)
    end
  end

  context 'recursive' do
    it 'returns an array' do
      result = fibs_rec(1)
      expect(result).to be_an(Array)
    end

    it 'return an array of the correct length' do
      result = fibs_rec(2)
      expect(result.length).to eq(2)
    end

    it 'the first item is 0' do
      result = fibs_rec(1)
      expect(result[0]).to eq(0)
    end

    it 'the second item is 1' do
      result = fibs_rec(3)
      expect(result[1]).to eq(1)
    end

    it 'the third item is 1' do
      result = fibs_rec(3)
      expect(result[2]).to eq(1)
    end

    it 'returns the correct 4 fibonnacci number sequence' do
      result = fibs_rec(4)
      desired_array = [0, 1, 1, 2]
      expect(result).to eq(desired_array)
    end

    it 'returns the correct 8 fibonnacci number sequence' do
      result = fibs_rec(8)
      desired_array = [0, 1, 1, 2, 3, 5, 8, 13]
      expect(result).to eq(desired_array)
    end
  end
end
