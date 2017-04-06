GIFTS = {1=>"Toy Soldier", 2=>"Wooden Train", 4=>"Hoop", 8=>"Chess Board", 16=>"Horse", 32=>"Teddy", 64=>"Lego", 128=>"Football", 256=>"Doll", 512=>"Rubik's Cube"}

def gifts(number)
  i = number
  result = []

  if GIFTS[i] == nil
    special_arr = (1...i).to_a

    special_arr.each do |num|
      if GIFTS.has_key? num
        result << GIFTS[num]
      end
    end
  elsif
    result << GIFTS[i]
  end
  result
end


p gifts(1)
p gifts(3)
