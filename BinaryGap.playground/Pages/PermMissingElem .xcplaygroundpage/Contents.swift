//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
public func solution(_ A : inout [Int]) -> Int {
    
    A = A.sorted()
    let minValue = A[0]
    
    for (index, value) in A.enumerated() {
        let expectedValue = index + minValue
        if (value != expectedValue) {
            return expectedValue
        }
    }
    
    return -1
}

var a = [2,3,1,5]
print(solution(&a))
