require 'string_calculator'

describe StringCalculator do
  context "when a string is empty" do
    it "returns 0" do
      string = StringCalculator.new("")
      expect(string.add).to eq 0
    end
  end
end
