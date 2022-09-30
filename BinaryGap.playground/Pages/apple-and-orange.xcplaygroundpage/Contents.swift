//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/*
 * Complete the 'countApplesAndOranges' function below.
 *
 * The function accepts following parameters:
 *  1. INTEGER s
 *  2. INTEGER t
 *  3. INTEGER a
 *  4. INTEGER b
 *  5. INTEGER_ARRAY apples
 *  6. INTEGER_ARRAY oranges
 
 https://www.hackingwithswift.com/articles/90/how-to-check-whether-a-value-is-inside-a-range
 */

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    // Write your code here
    var numberOfApples = 0
    var numberOfOrrages = 0
    for apple in apples {
        let applePosition = a + apple
        if (s...t ~= applePosition) {
            numberOfApples += 1
        }
    }
    print(numberOfApples)
    
    for orange in oranges {
        let orangePosition = b + orange
        if (s...t ~= orangePosition) {
            numberOfOrrages += 1
        }
    }
    print(numberOfOrrages)
    
//    if (4...2).contains(5) {
//        print("Number is inside the range")
//    }else {
//        print("Number not inside the range")
//
//    }
    
    
}

countApplesAndOranges(s:7, t:10, a:4, b:12, apples:[2,3,-4], oranges:[3,-2,-4])
