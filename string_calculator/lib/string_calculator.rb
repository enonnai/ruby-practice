class StringCalculator

  def initialize(string)
    @string = string
  end

  def add
    if @string.empty?
      0
    elsif is_a_single_number?
      @string.to_i
    else
      sum
    end
  end

  private

  def is_a_single_number?
    @string.chars.count == 1 && @string !~ /\D/
  end

  def sum
    sum = 0
    @string.chars.each do |char|
      sum += char.to_i
    end
    sum
  end
end
