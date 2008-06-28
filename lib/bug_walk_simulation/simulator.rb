class Simulator
  attr_reader :floor, :bug, :maximum_steps
  
  def initialize(options = {})    
    @floor = options[:floor].new(:height => options[:height], :width => options[:width])
    @bug = options[:bug].new(:floor => floor, :location => floor.random_tile, :moves => options[:moves])
    @maximum_steps = options[:maximum_steps]
  end
  
  def steps
    @floor.steps
  end
end