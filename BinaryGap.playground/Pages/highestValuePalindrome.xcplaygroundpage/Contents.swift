//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func highestValuePalindrome(s: String, n: Int, k: Int) -> String {
    // Write your code here
    
    if (k < 0) {
        return "-1"
    }
    
    var maxChange = k
    var characterList = Array(s)
    let maxCharcter = characterList.max() ?? "9"
    
    
    let strings = Array(s)
    
    var i = 0, j = n - 1
    
    while i < j {
        if (characterList[i] != characterList[j]) {
            if (characterList[i] < characterList[j]) {
                characterList[i] = characterList[j]
                maxChange -= 1
            }else if (characterList[i] > characterList[j]){
                characterList[j] = characterList[i]
                maxChange -= 1
            }
        }
        i += 1
        j -= 1
    }
    
    if (maxChange < 0) { return "-1" }
    print(String(characterList))
    i = 0
    j = n - 1
    while i < j {
        if (i == j && maxChange > 0) {
            characterList[i] = maxCharcter
        }
        
        if (characterList[i] < maxCharcter) {
            if (maxChange >= 2 && characterList[i] == strings[i] && characterList[j] == strings[j]) {
                characterList[i] = maxCharcter
                characterList[j] = maxCharcter
                maxChange -= 2
            } else if (maxChange >= 1 && (characterList[i] != strings[i] || characterList[j] != strings[j])) {
                characterList[i] = maxCharcter
                characterList[j] = maxCharcter
                maxChange -= 1
            }
        }
        i += 1
        j -= 1
    }
    
    let str = String(characterList)
    
    return str
}

//print(highestValuePalindrome(s: "3943", n: 4, k: 1))
print(highestValuePalindrome(s: "092282", n: 6, k: 3))
