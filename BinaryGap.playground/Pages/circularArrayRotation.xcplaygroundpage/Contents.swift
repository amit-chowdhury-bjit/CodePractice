//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 * Complete the 'circularArrayRotation' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY a
 *  2. INTEGER k
 *  3. INTEGER_ARRAY queries
 
 Ref: https://shounaklohokare.medium.com/circular-array-rotation-hackerrank-solution-in-python-6ecbb085ffce
 
 
 */

func rotateSingleLeft(a : [Int]) -> [Int]{
    var arr = a
    for i in 0..<a.count - 1 {
        let firstIndexObj = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = firstIndexObj

    }
    return arr
}


func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
    var finalArray:[Int] = [Int]()
    let lengthOfArray = a.count
    for index in queries {
        finalArray.append(a[(lengthOfArray-k+index)%lengthOfArray])
    }
    return finalArray
}


print(circularArrayRotation(a:[3,4,5], k:2, queries:[1,2]))
