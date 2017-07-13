class StringCalculator

  def initialize(string_numbers)
    @string_numbers = string_numbers
  end

  def add
    sum = 0
    if @string_numbers.empty?
      return 0
    elsif @string_numbers.chars.count == 1 && @string_numbers !~ /\D/
      return @string_numbers.to_i
    elsif @string_numbers.chars.each do |char|
        sum += char.to_i
      end
      return sum
    end
  end

end
