Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

class App
  attr_reader :input, :planet, :rovers, :instructions

  def initialize(input)
    @rovers = []
    @instructions = []

    set_up_world(input)
  end

  def run
    nasa = Nasa.new(planet, rovers, instructions)
    nasa.execute
    nasa.rovers_coords
  end

  private

  def set_up_world(input)
    input_map = input.split("\n")

    @planet = Planet.new(input_map.shift.split(" "))

    input_map.each_slice(2) do |position, instruction|
      @rovers.push Rover.new(position)
      @instructions.push(instruction)
    end
  end
end
