class Simulator
  attr_reader :bug, :floor, :maximum_steps
  
  def initialize(options = {})
    @bug = options[:bug]
    @floor = options[:floor]
    @maximum_steps = options[:maximum_steps]
  end
  
  def steps
    @floor.steps
  end
end