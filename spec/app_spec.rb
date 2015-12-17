require "spec_helper"

describe App do
  let(:input) { File.read("spec/support/input.txt") }
  let(:subject) { described_class.new(input) }

  describe ".initialize" do
    it "has the proper attributes" do
      expect(subject.planet).to have_attributes(y: 5, x: 5)
      expect(subject.rovers.count).to eq 2
      expect(subject.directions.count).to eq 2
    end
  end

  describe "#run" do
    it "returns the proper coordinates" do
      expect(subject.run).to eq(
        <<-eos
1 3 N
5 1 E
        eos
      )
    end
  end
end
