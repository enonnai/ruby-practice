def palindrome(num)
  return "Not valid" if (!num.is_a? Integer) || (num < 0)

  arr = num.to_s.split('')
  arr = arr.map(&:to_i)
  while arr.length > 0
    if arr.first == arr.last
      arr.pop
      arr.shift
    else
      break
     return false
    end
    return true
  end
  return false
end

