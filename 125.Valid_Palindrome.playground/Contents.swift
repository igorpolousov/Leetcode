import UIKit

/*
 A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.


 Given a string s, return true if it is a palindrome, or false otherwise.
 
 Example 1:
 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.
 
 Example 2:
 Input: s = "race a car"
 Output: false
 Explanation: "raceacar" is not a palindrome.
 
 Example 3:
 Input: s = " "
 Output: true
 Explanation: s is an empty string "" after removing non-alphanumeric characters.
 Since an empty string reads the same forward and backward, it is a palindrome.
 
 */

let s = "A man, a plan, a canal: Panama"
let s1 = "race a car"
let s2 = " "
let s3 = "Marge, let's \"[went].\" I await {news} telegram."
let s4 = "0P"
let s5 = "a"

func isPalindrome(_ s: String) -> Bool {
    var s = s.lowercased().filter{ $0.isLetter || $0.isNumber}

    if String(s.reversed()) == s {
        return true
    }
   
    return false
}

isPalindrome(s5)

//    var sOnlyLetters: String {
//        let arr = s.components(separatedBy: CharacterSet.lowercaseLetters.inverted)
//        var str = ""
//        for item in arr {
//            str += String(item)
//        }
//        return str
//    }
