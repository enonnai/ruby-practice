# The method returns a string with letters and numbers. The numbers, which are just next to the letters, represent the number of occurrencies of the letter that preceeds them. If the letter appears once only, then just the letter will be included in the string.

# Source: hackerrank.com

def compress(s)
   i = 0
   new_s = []
   while i < s.length do
    if s.count(s[i]) > 1
     new_s << "#{s[i]}" + "#{s.count(s[i])}"
    else
     new_s << "#{s[i]}"
    end
    i += 1
   end
  return new_s.uniq.join
 end

puts compress("aaabbc")
