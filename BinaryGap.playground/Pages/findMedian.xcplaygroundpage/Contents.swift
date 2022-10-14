//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/*
 * Complete the 'findMedian' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func findMedian(arr: [Int]) -> Int {
    // Write your code here
    let list = arr.sorted()
    
    let middleoftheObject = list.count/2
    
    if ((list.count % 2 == 1)) {
        return list[middleoftheObject]
    }else{
        return (list[middleoftheObject] + list[middleoftheObject-1])/2
    }
}


print(findMedian(arr:[1,2,3,4,5,6,7,8]))
