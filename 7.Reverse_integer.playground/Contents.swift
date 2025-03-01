import UIKit

/*
 Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

 Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

  

 Example 1:

 Input: x = 123
 Output: 321
 Example 2:

 Input: x = -123
 Output: -321
 Example 3:

 Input: x = 120
 Output: 21
 */

func reverse(_ x: Int) -> Int {
    
    var num = x
    var isNegative = false
    
    if num < 0 {
        num *= -1
        isNegative = true
    }
    var reversed = 0
    
    while num > 0 {
        var lastNum = num % 10
        reversed = reversed * 10 + lastNum
        num /= 10
    }
    
    if reversed > Int32.max {
        return 0
    }
    
    return isNegative ? -(reversed) : reversed
}

reverse(1534236469)
