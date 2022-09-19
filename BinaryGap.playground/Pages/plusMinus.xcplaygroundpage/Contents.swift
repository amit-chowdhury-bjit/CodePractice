//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func plusMinus(arr: [Int]) -> Void {
    var index = 0
    var positive:Double = 0
    var negative:Double = 0
    var zero:Double = 0
    let count:Double = Double(arr.count)
    while index < arr.count {
        if (arr[index] > 0) {
            positive += 1
        }else if (arr[index] < 0) {
            negative += 1
        }else {
            zero += 1
        }
        index += 1
    }

    print(Float(positive/count))
    print(Float (negative/count))
    print(Float(zero/count))
}


plusMinus(arr: [-4, 3, -9, 0, 4, 1])
