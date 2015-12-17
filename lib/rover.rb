class Rover
  attr_reader :x, :y, :direction

  def initialize(position)
    set_position(position)
  end

  def position
    "#{x} #{y} #{direction}"
  end

  def move!(instruction)
    if instruction == "L"
      rotate_left
    end
  end

  private

  def rotate_left
  end

  def set_position(position)
    position_map = position.split(" ")

    @x = position_map[0]
    @y = position_map[1]
    @direction = position_map[2]
  end
end
