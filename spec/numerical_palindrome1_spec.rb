require_relative '../kata/numerical_palindrome1'

describe 'palindrome' do

  it 'returns "Not valid" if the input is not an integer or less than 0' do
    expect(palindrome(-450)).to eq 'Not valid'
  end

  it 'returns true if the input is a numerical palindrome' do
    expect(palindrome(1221)).to eq true
  end

  it 'returns false if the input is not a numerical palindrome' do
    expect(palindrome(12345)).to eq false
  end

end
