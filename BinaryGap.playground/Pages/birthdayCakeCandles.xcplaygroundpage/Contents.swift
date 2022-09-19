//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func birthdayCakeCandles(candles: [Int]) -> Int {
    // Write your code here
    
    let maxnNumber = candles.max()
    var maxTallCandels = 0
    
    var index = 0
    while index < candles.count {
        if (maxnNumber == candles[index]) {
            maxTallCandels += 1
        }
        index += 1
    }
        
    
    return maxTallCandels
}


print(birthdayCakeCandles(candles:[4,4,1,3]))
