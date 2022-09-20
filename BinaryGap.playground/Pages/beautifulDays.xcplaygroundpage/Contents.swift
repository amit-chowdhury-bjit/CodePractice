//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 
 Function Description
 Complete the beautifulDays function in the editor below.
 beautifulDays has the following parameter(s):
 int i: the starting day number
 int j: the ending day number
 int k: the divisor
 
 * Complete the 'beautifulDays' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER i
 *  2. INTEGER j
 *  3. INTEGER k
 */

func reverse(x:Int) -> Int {
    var reverseNum = 0

    var number = x
    while(number != 0){
       reverseNum = reverseNum * 10
       reverseNum = reverseNum + number % 10
       number = number/10
    }
    return reverseNum
}


func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    // Write your code here
    
   // reverse(x:12)
   // print(reverse(x:12))
    var index = i
    var beautifulDays = 0
    while index <= j {
        let difference = abs(index - reverse(x:index))
        if (difference % k == 0) {
            beautifulDays += 1
        }
        index += 1
    }
    
    return beautifulDays
}

//print(beautifulDays(i:20, j: 23, k: 6))
print(beautifulDays(i:13, j: 45, k: 3))
