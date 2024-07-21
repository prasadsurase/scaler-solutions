package main

import (
	// dev "scaler/exams/exam001/assignment001"
	// dev "scaler/exams/exam001/assignment002"
	dev "scaler/exams/exam001/assignment003"
	"testing"
)

// Benchmark the program.
func BenchmarkSolution(b *testing.B) {
	dev.Call()
}
