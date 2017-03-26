# we take a block of code, wrap it up in an object(a proc), store it in a variable or pass it to a method.
toast = Proc.new do
  puts 'Cheers!'
end

toast.call #here we call the proc. It's a lot like a method.

do_you_like = Proc.new do |good_stuff|
  puts "I *really* like #{good_stuff}!"
end

do_you_like.call 'chocolate'

 # you can’t pass methods into other methods (but you can pass procs into methods), and methods can’t return other methods (but they can return procs). This is simply because procs are objects; methods aren’t.


#You can think of a proc as a "saved" block. Procs are great for keeping your code DRY, which stands for Don't Repeat Yourself. With blocks, you have to write your code out each time you need it; with a proc, you write your code once and can use it many times!

multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

(1..100).to_a.select(&multiples_of_3)

(1..100).to_a.select { |num| num % 3 == 0 }

cube = Proc.new { |x| x ** 3 }
[1, 2, 3].collect!(&cube)
# ==> [1, 8, 27]
[4, 5, 6].map!(&cube)
# ==> [64, 125, 216]
#The & is used to convert the cube proc into a block (since .collect! and .map! normally take a block). We'll do this any time we pass a proc to a method that expects a block.
#Procs have all the powers and abilities of objects. (Blocks do not.)
#Create a method, greeter, that takes no arguments and yields to a block. 2. Create a Proc, phrase, that puts "Hello there!". Pass this to greeter instead of a block. (Don't forget to pass &phrase instead of just phrase!)

def greeter
  yield
end

phrase = Proc.new { puts "Hello there!"}

greeter(&phrase) #we're calling a proc with a method
# we can call procs directly by using Ruby's .call method. Check it out!

hi = Proc.new { puts "Hello!" }

hi.call
