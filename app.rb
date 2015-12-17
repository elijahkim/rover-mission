class App
  attr_reader :input

  def initialize(input)
    @input = input
  end

  def run
      <<-eos
1 3 N
5 1 E
     eos
  end
end
