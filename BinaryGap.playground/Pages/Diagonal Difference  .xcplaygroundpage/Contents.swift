//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func diagonalDifference(arr: [[Int]]) -> Int {
    var firstSum = 0
    var secondSum = 0
    let count = arr.count
    var index = 0
    
    while index < count {
        firstSum = firstSum + arr[index][index]
        secondSum = secondSum + arr[index][count-index-1]
        index += 1
    }
    
    return abs(firstSum - secondSum)
}
