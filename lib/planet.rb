class Planet
  attr_reader :y, :x

  def initialize(coordinates)
    @y = coordinates[0].to_i
    @x = coordinates[1].to_i
  end
end
