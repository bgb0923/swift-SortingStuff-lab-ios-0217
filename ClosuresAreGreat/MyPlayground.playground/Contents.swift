//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func performOperation(with numbers: Double..., operation: (Double,Double) -> Double) -> Double {
    return numbers.reduce(0) { $0 + $1 }
}

print(performOperation(with: 1,2,3,4, 5) { $0 + $1 })
