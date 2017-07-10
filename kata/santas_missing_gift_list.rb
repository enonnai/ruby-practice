# Santa has misplaced his list of gift to all the children, he has however a condensed version lying around. In this condensed verison, instead of a list of gifts for each child, each one has an integer. He also have a list of gifts corresponding to each integer. His list is as follows:

GIFTS = {1=>"Toy Soldier", 2=>"Wooden Train", 4=>"Hoop", 8=>"Chess Board", 16=>"Horse", 32=>"Teddy", 64=>"Lego", 128=>"Football", 256=>"Doll", 512=>"Rubik's Cube"}
# The integer for each child is such that the child should get the highest toy lower than or equal to that integer, and then, if there's more left, also get the highest toy lower than the rest and so on. Know that Santa never gives the same gift twice.
# For example, by Timmy's name is 160. This means that Timmy should get both a football and a teddy, because 128 + 32 = 160.
# You should help Santa by decoding his own list and recreate the missing list for him. Santa's elf wants the list sorted alphabetically by the toys, so you should help them as well and list the toys in a sorted order.

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

