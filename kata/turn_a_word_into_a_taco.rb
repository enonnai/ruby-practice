# We want to input a word as a string, and return a list representing that word as a taco.

# Key: all vowels (except 'y') = beef

# t = tomato
# l = lettuce
# c = cheese
# g = guacamole
# s = salsa

# Note
# We do not care about case here. 'S' is therefore equivalent to 's' in our taco. Ignore all other letters; we don't want our taco uneccesarily clustered or else it will be too difficult to eat. Note that no matter what ingredients are passed, our taco will always have a shell.

def tacofy(word)
  result = []
  word.downcase.chars.each do |char|
    if char =~ /[AEIOUaeiou]/
      result << 'beef'
    elsif char == 't'
    result << 'tomato'
    elsif char == 'l'
    result << 'lettuce'
    elsif char == 'c'
    result << 'cheese'
    elsif char == 'g'
    result << 'guacamole'
    elsif char == 's'
    result << 'salsa'
		end
	end
 result.unshift('shell')
 result << 'shell'
 result
end

print tacofy('AcGa')
