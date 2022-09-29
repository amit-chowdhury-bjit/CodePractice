//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/*
 
 Function Description
 Complete the minimumDistances function in the editor below.
 minimumDistances has the following parameter(s):
 int a[n]: an array of integers
 Returns
 int: the minimum distance found or  if there are no matching elements
 Input Format
 The first line contains an integer , the size of array .
 The second line contains  space-separated integers .
 Constraints


 Output Format
 Print a single integer denoting the minimum  in . If no such value exists, print .
 
 * Complete the 'minimumDistances' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY a as parameter.
 */


func minimumDistances(a: [Int]) -> Int {
    // Write your code here
    let countedSet = NSCountedSet(array: a)
    var pairDifference:[Int] = [Int]()
    for value in countedSet {
        let countValue:Int = value as! Int
        if (countedSet.count(for: value) >= 2) {
            //print(value)
            let firstIndex = a.firstIndex(of: countValue)! + 1 // 0
            let lastIndex = a.lastIndex(of: countValue)! + 1// 3
            let difference = abs(firstIndex - lastIndex)
            pairDifference.append(difference)
        }
    }
    
    return pairDifference.min() ?? -1
}


//print(minimumDistances(a:[3,2,1,2,3]))
print(minimumDistances(a:[7,1,3,4,1,7]))
