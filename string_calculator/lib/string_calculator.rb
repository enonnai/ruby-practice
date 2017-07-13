class StringCalculator

  def initialize(string_numbers)
    @string_numbers = string_numbers
  end

  def add
    if @string_numbers.empty?
      return 0
    elsif @string_numbers.chars.count == 1 && @string_numbers !~ /\D/
      return @string_numbers.to_i
    end
  end

  def numeric?
    Float(self) != nil rescue false
  end

end
