//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 
 
 If the book is returned on or before the expected return date, no fine will be charged (i.e.: fine is 0).
 If the book is returned after the expected return day but still within the same calendar month and year as the expected return date, 15Hackos * number Of days .
 If the book is returned after the expected return month but still within the same calendar year as the expected return date, the 500 * number of month.
 If the book is returned after the calendar year in which it was expected, there is a fixed fine of 10000 Hackos.

 
 Function Description
 Complete the libraryFine function in the editor below.
 libraryFine has the following parameter(s):
 d1, m1, y1: returned date day, month and year, each an integer
 d2, m2, y2: due date day, month and year, each an integer
 Returns
 int: the amount of the fine or  if there is none
 
 * Complete the 'libraryFine' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER d1
 *  2. INTEGER m1
 *  3. INTEGER y1
 *  4. INTEGER d2
 *  5. INTEGER m2
 *  6. INTEGER y2
 */


func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
    // Write your code here
    var fine = 0
    
    if (y1 == y2) {
        if (m1 == m2) {
            if (d1 > d2) {
                fine = 15 * (d1-d2)
            }else {
                fine = 0
            }
        }else if (m1 > m2) {
            fine = 500 * (m1-m2)
        }else {
            fine = 0
        }
    }else if (y1 > y2){
        fine = 10000
    }
    return fine
}


print(libraryFine(d1:14, m1:7, y1:2018, d2:5, m2:7, y2:2018))
