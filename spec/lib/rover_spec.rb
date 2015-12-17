require "spec_helper"

describe Rover do
  let(:subject) { described_class.new("1 2 N") }

  describe "#move!(instruction)" do
    context "if the instruction is L" do
      it "rotates the rover 90* counter clock wise" do
      end
    end
  end
end
