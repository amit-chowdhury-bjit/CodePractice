//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
var result:[Int] = [Int]()
func miniMaxSum(arr: [Int]) -> Void {
    var index = 0
    var sumList:[Int] = [Int]()
    let count = arr.count
    while index < count {
        var sumValue = 0
        for (i, value) in arr.enumerated() {
            if (i != index) {
                sumValue += value
            }
        }
        sumList.append(sumValue)
        index += 1
    }
    print(sumList.min() ?? 0)
    print(sumList.max() ?? 0)
}


miniMaxSum(arr:[1,2,3,4,5])
miniMaxSum(arr: [5,5, 5, 5, 5])
