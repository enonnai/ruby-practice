GIFTS = {1=>"Toy Soldier", 2=>"Wooden Train", 4=>"Hoop", 8=>"Chess Board", 16=>"Horse", 32=>"Teddy", 64=>"Lego", 128=>"Football", 256=>"Doll", 512=>"Rubik's Cube"}

def gifts(number)
  result = []
  to_return = []
  if GIFTS[number] == nil
    while number > 0 do
      result << GIFTS.keys.select {|k| k <= number}.max
      number -= result [-1]
    end
    result.each do |num|
      to_return << GIFTS[num]
    end
  else
    to_return << GIFTS[number]
  end
  to_return.sort
end

