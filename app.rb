Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

class App
  attr_reader :input, :planet, :rovers, :directions

  def initialize(input)
    @rovers = []
    @directions = []

    set_up_world(input)
  end

  def run
    Nasa.new(planet, rovers, directions).execute
  end

  private

  def set_up_world(input)
    input_map = input.split("\n")

    @planet = Planet.new(input_map.shift.split(" "))

    input_map.each_slice(2) do |position, direction|
      @rovers.push Rover.new(position)
      @directions.push direction
    end
  end
end
