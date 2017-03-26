def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm in the lambda!"})

#######
strings = ["leonardo", "donatello", "michelangelo", "raffaello"]

symbolize = lambda { |x| x.to_sym }

symbols = strings.collect!(&symbolize)
#print symbols
my_array = ["raindrops", :kettles, "whiskers", :mittens]

symbol_filter = lambda { |x| x.is_a? Symbol}

symbols_check = my_array.select(&symbol_filter)
print symbols_check

#####Main differences:
# First, a lambda checks the number of arguments passed to it, while a proc does not. This means that a lambda will throw an error if you pass it the wrong number of arguments, whereas a proc will ignore unexpected arguments and assign nil to any that are missing.
#Second, when a lambda returns, it passes control back to the calling method; when a proc returns, it does so immediately, without going back to the calling method.

def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda

# A proc is a saved block we can use over and over. A lambda is just like a proc, only it cares about the number of arguments it gets and it returns to its calling method rather than returning immediately.
