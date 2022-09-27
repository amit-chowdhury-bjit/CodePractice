//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/*
 Function Description
 Complete the cutTheSticks function in the editor below. It should return an array of integers representing the number of sticks before each cut operation is performed.
 cutTheSticks has the following parameter(s):
 int arr[n]: the lengths of each stick
 
 * Complete the 'cutTheSticks' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func removeThefinalcut (arr: [Int]) -> [Int] {
    
    let minLengthStick = arr.min() ?? 1
    var result:[Int] = [Int]()
    for value in arr {
        let finalValue = value - minLengthStick
        if (finalValue > 0) {
            result.append(finalValue)
        }
    }
    return result
}

func cutTheSticks(arr: [Int]) -> [Int] {
    // Write your code here
    
    var result:[Int] = [Int]()
    var inPutList = arr
    
    while inPutList.count > 0 {
        result.append(inPutList.count)
        inPutList = removeThefinalcut(arr: inPutList)
    }
   
    return result
}

//print(cutTheSticks(arr:[8,6,4,1, 1]))

//5 4 4 2 2 8

print(cutTheSticks(arr:[5,4,4,2,2,8]))
