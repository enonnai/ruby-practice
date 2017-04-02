# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false
# [1, 1, 2, 2, 3, 3]

def got_three?(array)
  counter = 1
  array.each_with_index do |_, index|
    if array[index] == array[index+1]
      counter += 1
      break if counter == 3
    else
      counter = 1
    end
  end

  #counter == 3
   if counter == 3
     true
   else
     false
   end
end

p got_three? ['a','a','b']
