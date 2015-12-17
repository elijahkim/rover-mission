require "spec_helper"

describe Rover do
  let(:subject) { described_class.new("1 2 N") }

  describe "#move!(instruction)" do
    context "if the instruction is L" do
      it "rotates the rover 90* counter clock wise" do
        subject.move!("L")

        expect(subject.direction).to eq "W"
      end
    end

    context "if the instruction is R" do
      it "rotates the rover 90* clock wise" do
        subject.move!("R")

        expect(subject.direction).to eq "E"
      end
    end
  end
end
