require "spec_helper"

describe App do
  let(:input) { File.read("spec/support/input.txt") }
  let(:subject) { described_class.new(input) }

  describe ".initialize" do
    it "has the proper attributes" do
      expect(subject.rovers.count).to eq 2
      expect(subject.instructions.count).to eq 2
    end
  end

  describe "#run" do
    it "returns the proper coordinates" do
      doc = <<-eos
1 3 N
5 1 E
      eos

      expect(subject.run).to eq(doc.chop)
    end
  end
end
