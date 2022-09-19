//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

public func solution(_ A : inout [Int]) -> Int {
    
    A = Array(A.sorted().reversed())
    var index = 1
    var missingContent = A[0] - 1
    while (index < A.count) {
        if (A[index] != missingContent) {
            return 0
        }
        missingContent -= 1
        index += 1
    }
    return 1
}

var a = [4,1,3]
print(solution(&a))
/**
 
 */
