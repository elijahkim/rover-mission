require "spec_helper"

describe Nasa do
  let(:planet) { Planet.new([5, 5]) }
  let(:rovers) { [Rover.new("1 2 N"), Rover.new("3 3 E")] }
  let(:instructions) { ["LMLMLMLMM", "MMRMMRMRRM"] }
  let(:subject) { described_class.new(planet, rovers, instructions) }

  describe "#move_rover" do
    it "moves a rover" do
      rover = subject.rovers.first
      instruction = subject.instructions.first
      subject.send(:move_rover, rover, instruction)

      expect(rover.position).to eq ("1 3 N")
    end
  end

  describe "#print_rovers_coords" do
    it "prints the coords of the rovers" do
      doc = <<-eos
1 2 N
3 3 E
      eos

      expect(subject.rovers_coords).to eq (doc.chop)
    end
  end
end
