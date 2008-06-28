require File.dirname(__FILE__) + '/../lib/bug_walk_simulation'

module BugWalkSimulation  
  module Factory
    def new_simulator(options = {})
      bug = new_bug
      floor = new_floor
      options = options.merge :height                 => floor.height unless options[:height]
      options = options.merge :width                  => floor.width  unless options[:width]                
      options = options.merge :maximum_steps          => 4            unless options[:maximum_steps]
      options = options.merge :possible_moves         => bug.moves    unless options[:possible_moves]        
      Simulator.new options
    end
    
    def new_bug(options = {})
      options = options.merge :floor             => new_floor                                                              unless options[:floor]
      options = options.merge :location          => [0, 0]                                                                 unless options[:location]        
      options = options.merge :possible_moves    => [[-1, 0], [1, 0], [0, -1], [0, 1], [-1, -1], [-1, 1], [1, -1], [1, 1]] unless options[:possible_moves]
      Bug.new options
    end

    def new_floor(options = {})
      options = options.merge :height => 2 unless options[:height]
      options = options.merge :width  => 2 unless options[:width]
      Floor.new options
    end          
  end
end

Spec::Runner.configure do |config|  
  config.mock_with :mocha
  include BugWalkSimulation::Factory
end