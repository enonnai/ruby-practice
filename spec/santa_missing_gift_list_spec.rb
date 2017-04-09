require_relative '../kata/santas_missing_gift_list'

describe 'kata1' do

    it 'returns an array with the name of the toy if the number matches the toy key number' do
    expect(gifts(1)).to eq ['Toy Soldier']
    end


    it 'returns an array with the name/s of the toys if the number is lower than that integer' do
    expect(gifts(3)).to eq ['Toy Soldier', 'Wooden Train']
    end

    it 'returns an array with the name/s of the toys if the number is lower than that integer. The same toy cannot be given twice.' do
    expect(gifts(22)).to eq ['Hoop','Horse','Wooden Train']
    end

end

