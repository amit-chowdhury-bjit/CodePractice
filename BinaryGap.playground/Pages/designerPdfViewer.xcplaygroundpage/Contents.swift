//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 * Complete the 'designerPdfViewer' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY h
 *  2. STRING word
 */

func designerPdfViewer(h: [Int], word: String) -> Int {
    // Write your code here
    let letters = ["a","b","c", "d", "e", "f","g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x","y", "z"]
    let words = Array(word)
    var wordHeight:[Int] = [Int]()
    
    for letter in words {
        if (letters.contains("\(letter)")) {
            let index = letters.index(of: "\(letter)") ?? 0
            wordHeight.append(h[index])
        }else{
            wordHeight.append(0)
        }
    }
    print(wordHeight)
    print(wordHeight.max() ?? 0)
    
    let areaOfWord = wordHeight.count * (wordHeight.max() ?? 0) * 1
    return areaOfWord
}



print(designerPdfViewer(h:[1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 7,], word:"zaba"))
