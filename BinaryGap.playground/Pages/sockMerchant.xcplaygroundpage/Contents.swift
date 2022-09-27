//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 * Complete the 'sockMerchant' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER_ARRAY ar
 */

func sockMerchant(n: Int, ar: [Int]) -> Int {
    // Write your code here
    
    let countedSet = NSCountedSet(array: ar)
    var numberOfPair = 0
    for value in countedSet {
        numberOfPair += countedSet.count(for: value)/2
    }

    return numberOfPair
}


print(sockMerchant(n:7, ar: [1,2,1,2,1,3,2]))
