require_relative '../kata/unpacking_args'

describe 'spread' do

  it 'returns the result of calling the given lambda with the given arguments' do
    expect(spread(->(x,y){x+y},[1,2])).to eq 3
  end

  it 'returns the result of calling the given lambda with the given arguments' do
    expect(spread(->(x,y,z){x+y+z},[1,1,1])).to eq 3
  end

end
