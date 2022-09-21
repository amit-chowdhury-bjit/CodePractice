//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


/*
 * Complete the 'viralAdvertising' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER n as parameter.
 
 https://www.hackerrank.com/challenges/strange-advertising/problem?utm_campaign=challenge-recommendation&utm_medium=email&utm_source=24-hour-campaign
 
 */

func viralAdvertising(n: Int) -> Int {
    // Write your code here
    var cumulativeLiked = 0
    var shared = 5
    var loop = 1
    while loop <= n {
        cumulativeLiked += (shared/2)
        
        shared = (shared/2) * 3
        loop += 1
    }
    print(loop)
    print(shared)
    return cumulativeLiked
}
//3149621

print(viralAdvertising(n:34))
