class Nasa
  attr_reader :planet, :rovers, :instructions

  def initialize(planet, rovers, instructions)
    @planet = planet
    @rovers = rovers
    @instructions = instructions
  end

  def execute
    rovers.each_with_index do |rover, index|
      move_rover(rover, instructions[index])
    end
  end

  def move_rover(rover, instructions)
    instructions.each_char do |instruction|
      rover.move!(instruction)
    end
  end
end
