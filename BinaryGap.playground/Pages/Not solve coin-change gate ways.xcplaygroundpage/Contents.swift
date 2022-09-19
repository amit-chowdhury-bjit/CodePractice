//: [Previous](@previous)

import Foundation
import Darwin

var greeting = "Hello, playground"

// Ref: https://www.hackerrank.com/challenges/coin-change/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

//: [Next](@next)
func getWays(n: Int, c: [Int]) -> Int {

    var numberOfWays = 0
    let cointList:[Int] = c.sorted()
    let minValue = cointList.min() ?? 0

    for (i, value) in cointList.enumerated() {
        if (value > n) {
            continue
        }
        var difference = value - minValue
        
        while difference > n {
            numberOfWays += 1
            print(numberOfWays)

            difference -= minValue
        }
    }
    
    return numberOfWays
}

print(getWays(n:4, c: [8,1,2,3]))
