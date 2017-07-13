class StringCalculator

  def initialize(string)
    @string = string
  end

  def add
    sum = 0
    if @string.empty?
      return_zero
    elsif @string.chars.count == 1 && @string !~ /\D/
      return_single_number
    else
      return_sum
    end
  end

  private

  def return_zero
    0
  end

  def return_single_number
    @string.to_i
  end

  def return_sum
    sum = 0
    @string.chars.each do |char|
      sum += char.to_i
    end
    sum
  end
end
