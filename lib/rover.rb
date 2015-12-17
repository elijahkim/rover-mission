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
    "#{@x} #{@y} #{@direction}"
  end

  def move!(instruction)
    if instruction == "L"
      rotate_left
    elsif instruction == "R"
      rotate_right
    elsif instruction == "M"
      forward
    end
  end

  private

  def forward
    if @direction == "N"
      @x = @x + 1
    elsif @direction == "W"
      @y = @y - 1
    elsif @direction == "S"
      @x = @x - 1
    elsif @direction == "E"
      @y = @y + 1
    end
  end

  def rotate_left
    @direction = LEFT_ROTATION[@direction]
  end

  def rotate_right
    @direction = RIGHT_ROTATION[@direction]
  end

  def set_position(position)
    position_map = position.split(" ")

    @x = position_map[0].to_i
    @y = position_map[1].to_i
    @direction = position_map[2]
  end
end
