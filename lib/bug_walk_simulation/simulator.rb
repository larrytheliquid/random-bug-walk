class Simulator
  attr_reader :bug, :floor
  
  def initialize(options = {})
    @bug = options[:bug]
    @floor = options[:floor]    
  end
  
  def steps
    @floor.steps
  end
end