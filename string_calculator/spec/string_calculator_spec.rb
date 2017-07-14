require 'string_calculator'

describe StringCalculator do
  context "when a string is empty" do
    it "returns 0" do
      subject = StringCalculator.new("")
      expect(subject.add).to eq 0
    end
  end

  context "when a string has one number" do
    it "returns the number" do
      subject = StringCalculator.new("1")
      expect(subject.add).to eq 1
    end
  end

  context "when a string has two numbers" do
    it "returns their sum" do
      subject = StringCalculator.new("1,2")
      expect(subject.add).to eq 3
    end
  end

  context "when a string has a bigger amount of numbers" do
    it "returns their sum" do
      subject = StringCalculator.new("1,2,1,2")
      expect(subject.add).to eq 6
    end
  end
end
