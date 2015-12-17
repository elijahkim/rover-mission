class Nasa
  attr_reader :rovers, :instructions

  def initialize(rovers, instructions)
    @rovers = rovers
    @instructions = instructions
  end

  def execute
    rovers.each_with_index do |rover, index|
      move_rover(rover, instructions[index])
    end
  end

  def rovers_coords
    rovers.map(&:position).join("\n")
  end

  private

  def move_rover(rover, instructions)
    instructions.each_char do |instruction|
      rover.move!(instruction)
    end
  end
end
