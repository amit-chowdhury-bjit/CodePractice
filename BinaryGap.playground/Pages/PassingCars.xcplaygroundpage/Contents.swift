//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

public func solution(_ A : inout [Int]) -> Int {
    
    var numberOfPairs = 0
    
    for (index, element) in A.enumerated() {
        if (element == 0) {
            var nextIndex = index + 1
            while (nextIndex < A.count) {
                if (A[nextIndex] == 1) {
                    numberOfPairs += 1
                }
                nextIndex += 1
            }
        }
    }
    
    return numberOfPairs
}

var a = [1,0,0,1,1,1,0,0,0,1,0,0,0,0]
print(solution(&a))
