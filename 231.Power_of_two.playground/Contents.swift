import UIKit

/*
 Given an integer n, return true if it is a power of two. Otherwise, return false.

 An integer n is a power of two, if there exists an integer x such that n == 2x.
 
 Example 1:
 
 Input: n = 1
 Output: true
 Explanation: 2^0 = 1
 
 Example 2:

 Input: n = 16
 Output: true
 Explanation: 2^4 = 16
 
 Example 3:

 Input: n = 3
 Output: false
 */

let n = 10

func powerOfTwo(_ n: Int) -> Bool {
    var num = n
    if num == 1 {return true}
    if num < 1 {return false}
    while num >= 2 {
        if num % 2 == 0 {
            num = num / 2
        } else if num % 2 != 0 {
            return false
        }
    }
    return true
}

powerOfTwo(6)



