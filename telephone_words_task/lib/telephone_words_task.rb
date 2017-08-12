class TelephoneWords

TELEPHONE_KEYPAD = { 2 => "ABC", 3 => "DEF", 4 => "GHI", 5 => "JKL", 6 => "MNO", 7 => "PQRS", 8 => "TUV", 9 => "WXYZ"}

  def initialize
    @values = []
    @result = []
  end

  def telephone_words(array)
    if array.length == 1
      num = array.pop
      @result << TELEPHONE_KEYPAD[num].chars
    end

    if array.length == 2
      array.each do |num|
        @values << TELEPHONE_KEYPAD[num]
      end
      i = 0
      j = 0
      @values[0].length.times do
        while i < @values[0].length do
          @result << @values[0][j] + @values[1][i]
          i += 1
        end
        i = 0
        j += 1
      end
    end
    @result.join(", ")
  end
  
end

telephone_obj = TelephoneWords.new
puts telephone_obj.telephone_words([2, 5])
