require File.dirname(__FILE__) + '/../lib/bug_walk_simulation'

module BugWalkSimulation  
  class Factory
    class << self
      def new_simulator(options = {})
        bug = new_bug
        floor = new_floor
        options = options.merge :bug           => bug.class    unless options[:bug]
        options = options.merge :floor         => floor.class  unless options[:floor]
        options = options.merge :height        => floor.height unless options[:height]
        options = options.merge :width         => floor.width  unless options[:width]                
        options = options.merge :maximum_steps => 4            unless options[:maximum_steps]
        options = options.merge :moves         => bug.moves    unless options[:moves]        
        Simulator.new options
      end
      
      def new_bug(options = {})
        options = options.merge :moves => [[-1, 0], [1, 0], [0, -1], [0, 1], [-1, -1], [-1, 1], [1, -1], [1, 1]] unless options[:moves]
        Bug.new options
      end

      def new_floor(options = {})
        options = options.merge :height => 2 unless options[:height]
        options = options.merge :width  => 2 unless options[:width]
        Floor.new options
      end          
    end
  end
end