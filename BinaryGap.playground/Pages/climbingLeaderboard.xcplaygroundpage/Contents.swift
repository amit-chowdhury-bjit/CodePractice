//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func climbingLeaderboard(ranked: [Int], player: [Int]) -> [Int] {
    var leaderboardList:[Int] = [Int]()
    var updatedRank:[Int] = [Int]()
    var updatedPlayer:[Int] = [Int]()
    
    
    for score in player {
        updatedPlayer.append(score/10)
    }
    for rank in ranked {
        updatedRank.append(rank/10)
    }

    for score in updatedPlayer {
        if (updatedRank.contains(score)) {
            let rank = updatedRank.index(of: score) ?? 0
            leaderboardList.append(rank + 1)
        }else{
            leaderboardList.append(updatedRank.count + 1)
        }
    }

    return leaderboardList
}



print(climbingLeaderboard(ranked:[100,90, 40, 40, 20, 10], player:[5,25,50,120]))

//7
//100 100 50 40 40 20 10
//4
//5 25 50 120
