//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Lily decides to share a contiguous segment of the bar selected such that:
 
 
 1. The length of the segment matches Ron's birth month, and,
 2. The sum of the integers on the squares is equal to his birth day.
 
 
 Determine how many ways she can divide the chocolate.
 
 
 * Complete the 'birthday' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY s
 *  2. INTEGER d
 *  3. INTEGER m
 */

func birthday(s: [Int], d: Int, m: Int) -> Int {
    // Write your code here
    
    var numberChoocolate = 0
    
    for i in 0...(s.count-1) {
        var sum = 0
        for j in 0...(m-1) {
           // print(j)
            let index = i+j
            if (index < s.count) {
                sum += s[index]
            }
        }
        if (sum == d) {
            numberChoocolate += 1
        }
    }
    
    return numberChoocolate
}

print(birthday(s:[2,2,1,3,2],d:4, m:2))
