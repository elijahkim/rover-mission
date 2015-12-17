require "spec_helper"

describe Rover do
  let(:subject) { described_class.new("3 3 N") }

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

    context "if the instuction is M" do
      context "if the direction is N" do
        it "moves up a unit" do
          subject.direction = "N"
          subject.move!("M")

          expect(subject.position).to eq "4 3 N"
        end
      end

      context "if the direction is E" do
        it "moves right a unit" do
          subject.direction = "E"
          subject.move!("M")

          expect(subject.position).to eq "3 4 E"
        end
      end

      context "if the direction is S" do
        it "moves down a unit" do
          subject.direction = "S"
          subject.move!("M")

          expect(subject.position).to eq "2 3 S"
        end
      end

      context "if the direction is W" do
        it "moves left a unit" do
          subject.direction = "W"
          subject.move!("M")

          expect(subject.position).to eq "3 2 W"
        end
      end
    end
  end
end
