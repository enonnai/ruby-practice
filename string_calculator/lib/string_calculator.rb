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
    special = "?<>';?[]}{=-)(*&^%$#`~{}"
    regex = /[#{special.gsub(/./){|char| "\\#{char}"}}]/
    return "Not a valid input" if is_an_invalid_string?
    array = @string.split(/[\n,]/)
    if array.include?("")
      return "Not a valid input"
    elsif array.join !~ regex
      array.map {|char| char.to_i}.inject(:+)
    else
      return "Not a valid input"
    end
  end

  def is_an_invalid_string?
    @string.include?(",\n") || @string.include?("\n,")
  end

end

subject2 = StringCalculator.new("1,\n")
subject2.add
