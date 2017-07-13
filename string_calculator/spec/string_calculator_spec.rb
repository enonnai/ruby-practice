require 'string_calculator'

describe StringCalculator do
  context "when a string is empty" do
    it "returns 0" do
      string = StringCalculator.new("")
      expect(string.add).to eq 0
    end
  end

  context "when a string has one number" do
    it "returns the number" do
      string = StringCalculator.new("1")
      expect(string.add).to eq 1
    end
  end
end
