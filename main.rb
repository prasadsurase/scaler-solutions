require 'benchmark'

# require './exams/exam001/assignment001/solution.rb'
# require './exams/exam001/assignment002/solution.rb'
# require './exams/exam001/assignment003/solution.rb'
# require './regular-assignments/day-004/check-if-prime/solution.rb
# require './regular-assignments/day-004/count-of-factors/solution.rb'
# require './regular-assignments/day-006/good-pair/solution.rb'
# require './regular-assignments/day-006/reverse-array-elements-within-range/solution.rb'
# require './regular-assignments/day-006/rotate-array-n-times/solution.rb'
# require './regular-assignments/day-006/sum-of-max-min/solution.rb'
# require './regular-assignments/day-007/create-prefix-sum/solution.rb'
# require './regular-assignments/day-007/find-balanced-array-index/solution.rb'
# require './regular-assignments/day-007/prefix-sum-of-2d/solution.rb'
# require './regular-assignments/day-008/count-of-subsequence-in-given-string/solution.rb'
# require './regular-assignments/day-008/get-all-subarrays-of-array/solution.rb'
# require './regular-assignments/day-008/get-subarray-within-provided-range/solution.rb'
# require './regular-assignments/day-008/smallest-subarray-with-max-and-min-element/solution.rb'
# require './regular-assignments/day-009/maximum-subarray/solution.rb'
# require './regular-assignments/day-009/subarray-with-given-sum-and-length/solution.rb'
# require './regular-assignments/day-009/sum-of-all-subarrays/solution.rb'
# require './regular-assignments/day-010/anti-diagonals/solution.rb'
# require './regular-assignments/day-010/columnwise-sum-of-2d-array/solution.rb'
# require './regular-assignments/day-010/create-matrix-transpose/solution.rb'
# require './regular-assignments/day-010/rotate-2D-array-90-degrees/solution.rb'
# require './regular-assignments/day-010/sum-of-diagonal-elements/solution.rb'
# require './regular-assignments/day-013/element-removal/solution.rb'
# require './regular-assignments/day-013/kth-smallest-element/solution.rb'
# require './regular-assignments/day-013/noble-integer/solution.rb'
# require './regular-assignments/day-014/add-binary-strings/solution.rb'
# require './regular-assignments/day-015/longest-palindromic-substring/solution.rb'
# require './regular-assignments/day-016/count-increasing-triplets/solution.rb'
# require './regular-assignments/day-016/find-majority-element/solution.rb'
# require './regular-assignments/day-016/length-of-longest-consecutive-ones/solution.rb'

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
