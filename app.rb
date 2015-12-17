Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

class App
  attr_reader :input, :planet

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
  end
end
