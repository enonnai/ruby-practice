require_relative '../kata/padded_numbers'

describe 'kata2' do

  it 'returns a formatted string. The return value should equal "Value is VALUE" where value is a 5 digit padded number.' do
  expect(solution(12345)).to eq 'Value is VALUE'
  end

end

