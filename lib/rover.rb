class Rover
  LEFT_ROTATION = {
    "N" => "W",
    "W" => "S",
    "S" => "E",
    "E" => "W"
  }

  RIGHT_ROTATION = {
    "N" => "E",
    "E" => "S",
    "S" => "W",
    "W" => "N"
  }

  attr_accessor :x, :y, :direction

  def initialize(position)
    set_position(position)
  end

  def position
    "#{x} #{y} #{direction}"
  end

  def move!(instruction)
    if instruction == "L"
      rotate_left
    elsif instruction == "R"
      rotate_right
    end
  end

  private

  def rotate_left
    @direction = LEFT_ROTATION[@direction]
  end

  def rotate_right
    @direction = RIGHT_ROTATION[@direction]
  end

  def set_position(position)
    position_map = position.split(" ")

    @x = position_map[0]
    @y = position_map[1]
    @direction = position_map[2]
  end
end
