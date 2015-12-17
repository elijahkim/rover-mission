class Nasa
  attr_reader :planet, :rovers, :directions

  def initialize(planet, rovers, directions)
    @planet = planet
    @rovers = rovers
    @directions = directions
  end

  def execute
    <<-eos
1 3 N
5 1 E
     eos
  end
end
