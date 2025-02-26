import UIKit

/*
 Given an integer n, return true if it is a power of three. Otherwise, return false.

 An integer n is a power of three, if there exists an integer x such that n == 3x.

  

 Example 1:
 Input: n = 27
 Output: true
 Explanation: 27 = 3^3
 
 Example 2:
 Input: n = 0
 Output: false
 Explanation: There is no x where 3^x = 0.
 
 Example 3:
 Input: n = -1
 Output: false
 Explanation: There is no x where 3^x = (-1).
 
 Follow up: Could you solve it without loops/recursion?
 
 */

func isPowerOfThree(_ n: Int) -> Bool {
    var n = n
    while n % 3 == 0, n >= 1 {
        n /= 3
    }
    return n == 1
}

//isPowerOfThree(45)

func isPowerOfThree1(_ n: Int) -> Bool {
    if n <= 0 { return false }
    if n == 1 { return true }
    if n % 3 == 0 { return isPowerOfThree(n/3) }
    return false
}

//isPowerOfThree1(9)

func forMeasureTime() {
    for _ in 0...10 {
        let elapsed = ContinuousClock().measure {
            //isPowerOfThree(19683)
            isPowerOfThree1(19683)
        }
        print(elapsed)
    }
    
}

forMeasureTime()
