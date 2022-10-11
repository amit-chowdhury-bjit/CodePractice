//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/*
 * Complete the 'pangrams' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */

func pangrams(s: String) -> String {
    // Write your code here
    let letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    let inputterLetter = s.lowercased()
    for letter in letters {
        if (!inputterLetter.contains(letter)) {
            return "not pangram"
        }
    }
    return "pangram"
}
//


//print(pangrams(s:"We promptly judged antique ivory buckles for the next prize")) // not pangram

print(pangrams(s:"We promptly judged antique ivory buckles for the next prize")) // pangram


