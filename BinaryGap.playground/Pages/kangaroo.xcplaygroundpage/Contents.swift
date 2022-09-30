//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/*
 
 Function Description
 Complete the function kangaroo in the editor below.
 kangaroo has the following parameter(s):
 int x1, int v1: starting position and jump distance for kangaroo 1
 int x2, int v2: starting position and jump distance for kangaroo 2
 Returns
 string: either YES or NO
 Input Format
 A single line of four space-separated integers denoting the respective values of , , , and .
 
 * Complete the 'kangaroo' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts following parameters:
 *  1. INTEGER x1
 *  2. INTEGER v1
 *  3. INTEGER x2
 *  4. INTEGER v2
 */
func isNeg (s:Int) -> Bool{
    
    if (s > 0) {
        return true
    }
    return false
}
func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    // Write your code here
        var kan1Possition = x1
        var kan2Possition = x2
            
        var index = 1
        var possible = false
        
        while index <= 10000 {
            kan1Possition +=  v1
            kan2Possition +=  v2
            if (kan1Possition == kan2Possition) {
                possible = true
                break
            }
            index += 1
        }
        
        return possible ? "YES" : "NO"
}

//print(kangaroo(x1:2, v1:1, x2:1, v2:2))
print(kangaroo(x1:0, v1:3, x2:4, v2:2))
