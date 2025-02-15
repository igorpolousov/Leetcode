import UIKit

/*
 An ugly number is a positive integer which does not have a prime factor other than 2, 3, and 5.

 Given an integer n, return true if n is an ugly number.

  !!! - условие задачи не понятно написано, в итоге получается что правильным принятым решением оказалось пшение которое не просто проверяет есть ли определенные множители, но котрое уменьшит принимаемое число так, чтобы было только два множителя

 Example 1:

 Input: n = 6
 Output: true
 Explanation: 6 = 2 × 3
 Example 2:

 Input: n = 1
 Output: true
 Explanation: 1 has no prime factors.
 Example 3:

 Input: n = 14
 Output: false
 Explanation: 14 is not ugly since it includes the prime factor 7.
 
 */

// prime factors: 2,3,5  - ugly

func isUgly(_ n: Int) -> Bool {
    
    guard n != 1 else { return true }
    guard n > 0 else { return false }
    
    let ugly = [2,3,5]
    
    for i in 0...2 {
        if n % ugly[i] == 0 {
            if n % 7 == 0 {
                return false
            }
            return true
        }
    }
    return false
}

isUgly(14)

func isUgly1(_ num: Int) -> Bool {
   if num <= 0 {
           return false
       }

       var inputNum = num
       while inputNum > 1 {
           if inputNum % 2 == 0 {
               inputNum /= 2
           } else if inputNum % 3 == 0 {
               inputNum /= 3
           } else if inputNum % 5 == 0 {
               inputNum /= 5
           } else {
               break
           }
       }

       return inputNum == 1
}
