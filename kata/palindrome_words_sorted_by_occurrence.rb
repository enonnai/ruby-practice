
#The method takes a string of letters, e.g. "aaabbc", and returns a string with letters and numbers: "a3b2c". The numbers, which are just next to the letters, represent the number of occurrencies of the letter that preceeds them. If the letter appears once only, then just the letter will be included in the string. If a series of letters appear twice in the same string, e.g. "aaabbcaa", the number of occurrences of these will be shown in the returned string based on the actual position of that set of words: "a3b2ca2".

# Source: hackerrank.com

def compress(s)
  subs = []
  i = 0

  s.each_char do |c|
    if subs[i] && subs[i][-1] != c
      i += 1
    end

    (subs[i] ||= "") << c

  end
  compressed = subs.map { |sub|
    sub.size > 1 ? "#{sub[0]}#{sub.size}" : sub
  }

  compressed.join
end

puts compress("aaabbcaa")
