//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/*
 
 
 There are  chapters in Lisa's workbook, numbered from  to .
 The  chapter has  problems, numbered from  to .
 Each page can hold up to  problems. Only a chapter's last page of exercises may contain fewer than  problems.
 Each new chapter starts on a new page, so a page will never contain problems from more than one chapter.
 The page number indexing starts at .
 Given the details for Lisa's workbook, can you count its number of special problems?
 
 * Complete the 'workbook' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER k
 *  3. INTEGER_ARRAY arr
 */


func workbook(n: Int, k: Int, arr: [Int]) -> Int {
    // Write your code here
    
    var numberOfSpecialProblem = 0
    var index = 0
    var numOfPerChapters:[Int] = [Int]()
    var totalPage = 0
    
    //var perPageProblems:[Int] = [Int]()
    var allPage = 0
    while index < arr.count {
        let totalProblemInChapter = arr[index]
        var page = 1
        if (totalProblemInChapter > k) {
            page = totalProblemInChapter / k
            if (totalProblemInChapter % k > 0) {
                page += 1
            }
        }
        
        allPage += page
        numOfPerChapters.append(page)
        
        var problemStartFrom = 1
        var end = k

        while page > 0 {
            totalPage += 1
            if (end > totalProblemInChapter) {
                end -= k
                let remain = totalProblemInChapter % k
                end += remain
            }

            if (problemStartFrom...end).contains(totalPage) {
                //print("problemStartFrom \(problemStartFrom) end:\(end) totalPage \(totalPage)")
                    numberOfSpecialProblem += 1
                }
                        
            page -= 1
            problemStartFrom += k
            end += k
            
        }
        index += 1
    }
    print(numOfPerChapters)
    print("totalPage \(totalPage) allPage \(allPage)")
    return numberOfSpecialProblem
}



//print(workbook(n:5, k: 3, arr:[4,2,6,1,10]))  //-> 4

print(workbook(n:10, k: 5, arr:[3, 8, 15, 11, 14, 1, 9, 2, 24, 31]))
