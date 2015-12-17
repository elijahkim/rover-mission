class Rover
  LEFT_ROTATION = {
    "N" => "W",
    "W" => "S",
    "S" => "E",
    "E" => "N"
  }

  RIGHT_ROTATION = {
    "N" => "E",
    "E" => "S",
    "S" => "W",
    "W" => "N"
  }

  MOVE_FORWARD = {
    "N" => :go_up,
    "E" => :go_right,
    "S" => :go_down,
    "W" => :go_left,
  }

  MOVE_INSTRUCTION = {
    "L" => :rotate_left,
    "R" => :rotate_right,
    "M" => :forward
  }

  attr_accessor :x, :y, :direction

  def initialize(position)
    set_position(position)
  end

  def position
    "#{@x} #{@y} #{@direction}"
  end

  def move!(instruction)
    send(MOVE_INSTRUCTION[instruction])
  end

  private

  def forward
    send(MOVE_FORWARD[@direction])
  end

  def go_up
    @y = @y + 1
  end

  def go_right
    @x = @x + 1
  end

  def go_down
    @y = @y - 1
  end

  def go_left
    @x = @x - 1
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
