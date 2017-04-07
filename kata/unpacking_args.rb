def spread(func, args)
  func.call(args[0],args[1])
end

some_function = lambda {|x,y| x + y }
