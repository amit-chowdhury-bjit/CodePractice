//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 https://www.hackerrank.com/challenges/the-hurdle-race/problem?isFullScreen=true
 * Complete the 'hurdleRace' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER k
 *  2. INTEGER_ARRAY height
 */

func hurdleRace(k: Int, height: [Int]) -> Int {
    // Write your code here
    
    let maxheight = height.max() ?? 0
    
    let drink = maxheight - k
    
    if (drink > 0) {
        return drink
    }
    
    return 0
    
}

//print(hurdleRace(k:4, height:[1,6,3,5,2]))
print(hurdleRace(k:7, height:[2,5,4,5,2]))
