//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 * Complete the 'reverseArray' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY a as parameter.
 */

func reverseArray(a: [Int]) -> [Int] {
    // Write your code here
    var index = a.count - 1
    var reverseList:[Int] = [Int]()
    
    while index >= 0 {
        reverseList.append(a[index])
        index -= 1
    }
    
    return reverseList
}


print(reverseArray(a:[1,2,3,4,5]))
