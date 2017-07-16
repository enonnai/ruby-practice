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
    i = 0
    array = []
    while i < @string.length do
      if @string[i] !~ /\D/ && @string[i+1] == "," || @string[i+1] == nil
        array << @string[i].to_i
        i += 2
      else
        return "Not a valid input"
      end
    end
    array.inject(:+)
  end
end

str = StringCalculator.new("1.2")
p str.add
