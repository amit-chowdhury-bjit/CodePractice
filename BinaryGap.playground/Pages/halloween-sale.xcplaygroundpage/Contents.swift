//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 * Complete the 'howManyGames' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER p
 *  2. INTEGER d
 *  3. INTEGER m
 *  4. INTEGER s
 
 Function Description
 Complete the howManyGames function in the editor below.
 howManyGames has the following parameters:
 int p: the price of the first game
 int d: the discount from the previous game price
 int m: the minimum cost of a game
 int s: the starting budget
 Example
  p = 20
  d = 3
  m = 6
  s = 70
*/

func howManyGames1(p: Int, d: Int, m: Int, s: Int) -> Int {
    // Return the number of games you can buy
    
    var numberOfGames = 1
    var totalSpent = p
    if ((p-d) > 0){
        var nextGamePrice = p - d
        if ((nextGamePrice) > m) {
            var numberOfSubsequent = (nextGamePrice-m)/d + (nextGamePrice-m) % d
            
            numberOfGames = numberOfSubsequent + 1
            
            totalSpent = p
            while numberOfSubsequent > 0 {
                totalSpent += nextGamePrice
                if (totalSpent > s) {
                    numberOfGames -= 1
                    break
                }
                
                nextGamePrice -= d
                numberOfSubsequent -= 1
            }
           // print(totalSpent)
        }
        if (totalSpent < s) {
            numberOfGames += (s-totalSpent)/m
        }
        
    }else{
        numberOfGames += (s-totalSpent)/m
    }
   
    
    //print(totalSpent)
    return numberOfGames
}


func howManyGames(p: Int, d: Int, m: Int, s: Int) -> Int {
    
    if (s < p) {
        return 0
    }
    
    var numberOfGames = 1
    var totalSpent = p
    var nextGamePrice = p - d
    if ((nextGamePrice > m)) {
        
        if (((nextGamePrice + totalSpent) > s)) {
            return numberOfGames
        }
        
        var numberOfSubsequent = (nextGamePrice-m)/d + (nextGamePrice-m) % d
        
        numberOfGames += numberOfSubsequent
        print("numberOfSubsequent:" + "\(numberOfSubsequent)")

        totalSpent = p
        while numberOfSubsequent > 0 {
            totalSpent += nextGamePrice
            if (totalSpent > s) {
                numberOfGames -= 1
                totalSpent -= nextGamePrice
                print("price high")
                break
            }
            nextGamePrice -= d
           // print(nextGamePrice)
            if ((nextGamePrice < m)) {
                numberOfGames -= (numberOfSubsequent - 1)
                break
            }
            numberOfSubsequent -= 1
        }
        //print(totalSpent)
    }
//    print(totalSpent)
//    print((s-totalSpent))
//    print(numberOfGames)
    if ((s-totalSpent) > m) {
        numberOfGames += (s-totalSpent)/m
    }
    
    return numberOfGames
}
//13 86 8 9027
//print(howManyGames(p:20, d:3, m:6, s:70))
//print(howManyGames(p:13, d:86, m:8, s:9027)) // 1127
//73 72 44 9163
//print(howManyGames(p:73, d:72, m:44, s:9163)) // 207
//86 31 1 6317

//6155
//print(howManyGames(p:86, d:31, m:1, s:6317))

//55 10 16 3116 -> 188
print(howManyGames(p:55, d:10, m:16, s:3116))

//100 11 10 1 -> 0

//print(howManyGames(p:100, d:11, m:10, s:1))

//100 19 1 180 -> 1

//print(howManyGames(p:100, d:19, m:1, s:180))
