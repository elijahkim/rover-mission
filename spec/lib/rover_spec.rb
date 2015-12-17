require "spec_helper"

describe Rover do
  let(:planet) { Planet.new([10, 10]) }
  let(:subject) { described_class.new("3 3 N", planet) }

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
      before { subject.direction = "N" }
      context "if the direction is N" do
        it "moves up a unit" do
          subject.move!("M")

          expect(subject.position).to eq "3 4 N"
        end

        context "if the movement would put the rover out of bounds" do
          it "doesn't move" do
            subject.y = 10
            subject.move!("M")

            expect(subject.position).to eq "3 10 N"
          end
        end
      end

      context "if the direction is E" do
        before { subject.direction = "E" }
        it "moves right a unit" do
          subject.move!("M")

          expect(subject.position).to eq "4 3 E"
        end

        context "if the movement would put the rover out of bounds" do
          it "doesn't move" do
            subject.x = 10
            subject.move!("M")

            expect(subject.position).to eq "10 3 E"
          end
        end
      end

      context "if the direction is S" do
        before { subject.direction = "S" }
        it "moves down a unit" do
          subject.move!("M")

          expect(subject.position).to eq "3 2 S"
        end

        context "if the movement would put the rover out of bounds" do
          it "doesn't move" do
            subject.y = 0
            subject.move!("M")

            expect(subject.position).to eq "3 0 S"
          end
        end
      end

      context "if the direction is W" do
        before { subject.direction = "W" }
        it "moves left a unit" do
          subject.move!("M")

          expect(subject.position).to eq "2 3 W"
        end

        context "if the movement would put the rover out of bounds" do
          it "doesn't move" do
            subject.x = 0
            subject.move!("M")

            expect(subject.position).to eq "0 3 W"
          end
        end
      end
    end
  end
end
