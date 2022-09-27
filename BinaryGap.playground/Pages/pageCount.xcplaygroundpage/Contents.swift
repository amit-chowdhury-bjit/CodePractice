//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 * Complete the 'pageCount' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER p
 */

func pageCount(n: Int, p: Int) -> Int {
    
    var startFromLeft = 0
    var startFromRight = 0
    
    var pageTurn = 1
    while pageTurn < p {
        pageTurn += 2
        //print(pageTurn)
        if (pageTurn >= p){
            startFromLeft += 1
        }
    }
    pageTurn = n
    while pageTurn > p {
        pageTurn -= 2
        if (pageTurn >= p){
            startFromRight += 1
        }
    }
    
    
//    print(startFromLeft)
//    print(startFromLeft)
    let pageTurns = [p/2, (n/2-p/2)]
    
    //Math.min(p/2 , n/2 - p/2);

    //return (startFromLeft > startFromRight) ? startFromRight : startFromLeft
    
    return pageTurns.min() ?? 0
}



//print(pageCount(n:5,p:3))
print(pageCount(n:6,p:2))
//print(pageCount(n:5,p:4))

