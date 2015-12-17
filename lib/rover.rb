class Rover
  attr_reader :position, :directions

  def initialize(position, directions)
    @position = position
    @directions = directions
  end
end
