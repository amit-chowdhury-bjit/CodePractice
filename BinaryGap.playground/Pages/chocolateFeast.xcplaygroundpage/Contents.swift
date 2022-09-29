//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/*
 
 Function Description
 Complete the chocolateFeast function in the editor below.
 chocolateFeast has the following parameter(s):
 int n: Bobby's initial amount of money
 int c: the cost of a chocolate bar
 int m: the number of wrappers he can turn in for a free bar
 Returns
 int: the number of chocolates Bobby can eat after taking full advantage of the promotion
 Note: Little Bobby will always turn in his wrappers if he has enough to get a free chocolate.
 
 
 * Complete the 'chocolateFeast' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER c
 *  3. INTEGER m
 */


func chocolateFeast(n: Int, c: Int, m: Int) -> Int {
    var candy = n/c
    var numberOfWrapper = candy
    
    while numberOfWrapper >= m {
        let newWrapper = numberOfWrapper/m
        candy += newWrapper
        numberOfWrapper = newWrapper + numberOfWrapper%m
    }
    return candy
}


//print(chocolateFeast(n:15, c: 3, m:2))
print(chocolateFeast(n:10, c: 2, m:5))
