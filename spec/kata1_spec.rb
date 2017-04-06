require_relative '../kata/kata1'

describe 'kata1' do

  it 'returns an array with the name of the toy if the nummber matches only one toy' do
  expect(gifts(1)).to eq ['Toy Soldier']
end

  it 'returns an array with the names of the toys if the number matches more than one toy' do
  expect(gifts(3)).to eq ['Toy Soldier', 'Wooden Train']
end





end

