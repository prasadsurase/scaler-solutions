Benchmakr the


# Problem

# How to Run Solution

## Ruby
The solution.rb file contains the Ruby solution. Comment the benchmarking code. The file should contain the below code.
```
# should be as below.
# Benchmark.measure { Solution.new.call }
puts Solution.new.call
```
This file can be executed as below.
```
ruby solution.rb
```
To observe the benchmarking results, uncomment the benchmarking code in the file and ruby the file using the above command.
```
# should be as below.
puts Benchmark.measure { Solution.new.call }
# Solution.new.call
```

## Golang
The solution.go file contains the solution in Golang. This file can be executed as below.
```
go run main.go
```
To observe the benchmarking results, execute the below command. The benchmarking can be done for N times by specifying any integer value to -count argument.
```
go test -bench=. -count N
```