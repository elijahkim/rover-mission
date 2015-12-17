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

    @planet = input_map.shift
  end
end
