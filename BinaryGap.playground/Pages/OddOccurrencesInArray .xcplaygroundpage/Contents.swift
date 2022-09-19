//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
public func solution(_ A : inout [Int]) -> Int {
    
    let countedSet = NSCountedSet(array: A)

    for value in countedSet {
        if (countedSet.count(for: value) == 1) {
            return value as! Int
        }
    }
    
    var result:[Int] = []
    result.append(1)
    return -1
}

var values = [65, 65, 65, 55, 55, 30, 30, 27]
//let countedSet = NSCountedSet(array: values)
//print(countedSet.count(for: 65.0))   // 3
//for value in countedSet {
//    print("Element:", value, "count:", countedSet.count(for: value))
//}

print(solution(&values))

let names = ["Taylor", "Paul", "Adele"]
let count = names.reduce(0) { $0 + $1.count }
print(count)
