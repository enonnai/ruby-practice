# Complete the solution so that it returns a formatted string. The return value should equal "Value is VALUE" where value is a 5 digit padded number.

# Example:
# solution(5) # should return "Value is 00005"

def solution(value)
  result = [0,0,0,0,0]
  value.to_s.length.times do
    result.pop
  end
  result << value
  return "Value is #{result.join}"
end

# 123.to_s.rjust(5, "0")
