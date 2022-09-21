//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 * Complete the 'breakingRecords' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY scores as parameter.
 
 https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem?isFullScreen=true
 
 */

func breakingRecords(scores: [Int]) -> [Int] {
    // Write your code here
    var highestScore:[Int] = [Int]()
    var lowestScore:[Int] = [Int] ()
    var highestScoreChange = 0
    var lowestScoreChange = 0
    
    for score in scores {
        if (highestScore.count == 0) {
            highestScore.append(score)
            lowestScore.append(score)
            continue
        }
        let highScore = highestScore.max() ?? 0
        let minScore = lowestScore.min() ?? 0

//        print(minScore)
        if (score > highScore) {
            if (!highestScore.contains(score)) {
                highestScoreChange += 1
            }
            highestScore.append(score)
        }else{
            highestScore.append(highScore)
        }
        
        if (score < minScore) {
            if (!lowestScore.contains(score)) {
                lowestScoreChange += 1
            }
            lowestScore.append(score)

        }else{
            lowestScore.append(minScore)
        }
//        print(highestScore)
//        print(lowestScore)
    }
    
    return [highestScoreChange, lowestScoreChange]
}

print(breakingRecords(scores:[10,5,20,20,4,5,2,25,1]))
