require File.dirname(__FILE__) + '/../lib/bug_walk_simulation'
require 'benchmark'

simulator = BugWalkSimulation::Simulator.new(
  :height          => 40,
  :width           => 20,
  :possible_moves  => [[-1, 0], [1, 0], [0, -1], [0, 1], [-1, -1], [-1, 1], [1, -1], [1, 1]],
  :moves_lifetime  => 50_000,
  :goal            => lambda {|bug| bug.floor.explored? }
)

puts "[#{Time.now}] Starting simulation..."

Benchmark.bm(15) {|reporter| reporter.report("Random bug walk") { simulator.simulate } }

puts "[#{Time.now}] Simulation completed"

puts "Bug moves: #{simulator.bug.number_of_moves}"

puts "Floor density:"

simulator.floor.tiles.each do |row|
  puts row.inspect
end