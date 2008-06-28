require File.dirname(__FILE__) + '/../lib/bug_walk_simulation'

module BugWalkSimulation  
  class Factory
    class << self
      def new_bug(options = {})
        options = options.merge :moves => [:north, :south, :east, :west, :northeast, :northwest, :southeast, :southwest] unless options[:moves]
        Bug.new options
      end

      def new_floor(options = {})
        options = options.merge :height => 2 unless options[:height]
        options = options.merge :width => 2  unless options[:width]  
        Floor.new options
      end
    end
  end
end