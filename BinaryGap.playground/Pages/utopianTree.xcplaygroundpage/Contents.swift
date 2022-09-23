//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 * Complete the 'utopianTree' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER n as parameter.
 */

func utopianTree(n: Int) -> Int {
    // Write your code here
        
    var numberOfYear = 1
    var treeHeight = 1
    
    while numberOfYear <= n {
        if ((numberOfYear % 2 == 1)) {
            treeHeight *= 2
        }else {
            treeHeight += 1
        }
        numberOfYear += 1
    }
    
    return treeHeight
}


print(utopianTree(n:29))
