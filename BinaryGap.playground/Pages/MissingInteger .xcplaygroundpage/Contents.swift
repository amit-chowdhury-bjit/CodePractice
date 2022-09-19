//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

public func solution(_ A : inout [Int]) -> Int {
    if (A.count == 0){
        return 1
    }
    
    var numbers:Set = Set<Int>()
    
    for num in A {
        numbers.insert(num)
    }
        
    var index = 1
    
    while (index <= A.count) {
        if (numbers.contains(index) != true){
            return index
        }
        
        index += 1
    }
    return A.count + 1
}

var a = [1,2,3]

print(solution(&a))
