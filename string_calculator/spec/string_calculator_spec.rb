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

  context "when a string has two numbers separated by a comma" do
    it "returns their sum" do
      subject = StringCalculator.new("1,2")
      expect(subject.add).to eq 3
    end
  end

  context "when a string has more than two numbers separated by commas" do
    it "returns their sum" do
      subject = StringCalculator.new("1,2,1,2")
      expect(subject.add).to eq 6
    end
  end

  context "when a string has numbers separated by commas and new lines" do
    it "returns their sum" do
      subject = StringCalculator.new("1\n2,3")
      expect(subject.add).to eq 6
    end
  end

  context "when a string has numbers separated by new lines" do
    it "returns their sum" do
      subject = StringCalculator.new("1\n2\n3")
      expect(subject.add).to eq 6
    end
  end

  context "when a string has numbers separated by other symbols" do
    it "returns invalid input message" do
      subject = StringCalculator.new("1;2")
      subject2 = StringCalculator.new("1;2-3")
      message = "Not a valid input"
      expect(subject.add).to eq message
      expect(subject2.add).to eq message
    end
  end

  context "when a string has numbers separated by a comma and a new line" do
    it "returns invalid input message" do
      subject = StringCalculator.new("1,\n2")
      subject2 = StringCalculator.new("1,\n")
      message = "Not a valid input"
      expect(subject.add).to eq message
      expect(subject2.add).to eq message
    end
  end
end
