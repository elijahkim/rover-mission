Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

class App
  attr_reader :input, :planet, :rovers

  def initialize(input)
    set_up_world(input)
  end

  def run
    <<-eos
1 3 N
5 1 E
     eos
  end

  private

  def set_up_world(input)
    input_map = input.split("\n")

    @planet = Planet.new(input_map.shift.split(" "))
    @rovers = input_map.each_slice(2).map do |position, directions|
      Rover.new(position, directions)
    end
  end
end
