import UIKit

func isPalindrome1(_ x: Int) -> Bool {
    var num = x
    var reverseNum = 0
    while num > 0 {
        let reminder = num % 10
        reverseNum = reverseNum * 10 + reminder
        num = num / 10
        print("revNum \(reverseNum)")
        print("num \(num)")
    }
    return x == reverseNum
}

isPalindrome(121)
//isPalindrome(1001)

func isPalindrome(_ x: Int) -> Bool {
       var value = x
       var result = 0

       while value != 0 {
           result = result * 10 + value % 10
           value = value / 10
       }

       return x == abs(result)
   }
