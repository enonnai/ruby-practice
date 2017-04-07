GIFTS = {1=>"Toy Soldier", 2=>"Wooden Train", 4=>"Hoop", 8=>"Chess Board", 16=>"Horse", 32=>"Teddy", 64=>"Lego", 128=>"Football", 256=>"Doll", 512=>"Rubik's Cube"}

def gifts(number)
  result = []

  if GIFTS[number] == nil
    special_arr = (1...number).to_a

    special_arr.each do |num|
      if GIFTS.has_key? num
        result << GIFTS[num]
      end
    end

  elsif
    result << GIFTS[number]
  end

  result.sort
end

