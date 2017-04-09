def solution(value)
  result = [0,0,0,0,0]
  value.to_s.length.times do
    result.pop
  end
  result << value
  return "Value is #{result.join}"
end

# 123.to_s.rjust(5, "0")
