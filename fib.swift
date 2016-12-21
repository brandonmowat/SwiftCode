#! /usr/bin/swift

// Dynamic programming solution to computing fibbonacci numbers.
// runs in O(n) time.

import Foundation

class FibSwift {

  var memo = [Int: Int]() // reduce computation time

  func computeFibNum(_ val:Int) -> Int {
    if (val <= 2) {
      return 1
    } else if (memo[val] != nil) {
      return memo[val]!
    } else {
      memo[val] = (self.computeFibNum(val-1) + self.computeFibNum(val-2)) // recursive call
      return memo[val]!
    }

  }
}

// run on the command line
var Fib = FibSwift()
print(Fib.computeFibNum(Int(CommandLine.arguments[1])!))

// i.e. $ ./fib.swift [fib_num_to_compute]
