require_relative '../kata/unpacking_args'

describe 'spread' do

  it 'returns the sum of a list of arguments' do
    expect(spread(->(x,y){x+y},[1,2])).to eq 3
  end

end
