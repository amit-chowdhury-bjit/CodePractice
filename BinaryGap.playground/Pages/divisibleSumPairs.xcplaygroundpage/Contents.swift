//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 * Complete the 'divisibleSumPairs' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER k
 *  3. INTEGER_ARRAY ar
 */

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    // Write your code here
    var sumPairs = 0
    for (index, value) in ar.enumerated() {
        let value = value
        var j = index + 1
        while j < n {
            let pairValue = ar[j] + value
            j += 1
            if (pairValue % k == 0) {
                sumPairs += 1
            }
        }
        
    }
    return sumPairs
}

print(divisibleSumPairs(n:6, k: 3, ar:[1,3,2,6,1,2]))
