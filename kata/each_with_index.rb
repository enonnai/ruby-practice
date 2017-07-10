# In this challenge, your task is to complete the skip_animals method that takes an animals array and a skip integer and returns an array of all elements except first skip number of items as shown in the example below.

# For example:
# skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2)
# => ["2:fox", "3:wolf"]

def skip_animals(animals, skip)
  i = skip
  array = []
    while i < animals.length do
        array << "#{i}:#{animals[i]}"
        i += 1
    end
  array
end
