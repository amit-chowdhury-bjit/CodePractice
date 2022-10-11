//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 https://www.hackerrank.com/challenges/equality-in-a-array/problem?isFullScreen=true
 * Complete the 'equalizeArray' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func equalizeArray(arr: [Int]) -> Int {
    // Write your code here
    
    let countedSet = NSCountedSet(array: arr)
    var max:[Int] = [Int]()
    for value in countedSet {
        max.append(countedSet.count(for: value))
    }
    return ( arr.count - (max.max() ?? 0))
}


print(equalizeArray(arr: [3, 3, 2, 1, 3]))

print(equalizeArray(arr: [1,2,3,1, 2, 3, 3, 3]))
