require 'benchmark'

# require './exams/exam001/assignment001/solution.rb'
# require './exams/exam001/assignment002/solution.rb'
require './exams/exam001/assignment003/solution.rb'

class Main
  def call
    Solution.new.call
  end

  def benchmark
    Benchmark.measure { Solution.new.call }
  end
end

# Main.new.call
puts Main.new.benchmark
