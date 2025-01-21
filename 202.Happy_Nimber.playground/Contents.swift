import UIKit

/*
 Write an algorithm to determine if a number n is happy.

 A happy number is a number defined by the following process:

 Starting with any positive integer, replace the number by the sum of the squares of its digits.
 Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
 Those numbers for which this process ends in 1 are happy.
 Return true if n is a happy number, and false if not.

  

 Example 1:

 Input: n = 19
 Output: true
 Explanation:
 1^2 + 9^2 = 82
 8^2 + 2^2 = 68
 6^2 + 8^2 = 100
 1^2 + 0^2 + 0^2 = 1
 
 Example 2:

 Input: n = 2
 Output: false
  

 Constraints:

 1 <= n <= 231 - 1
 */

// Посмотреть вечером как сделать рекурсию и завтра сделать рекурсию

func isHappy1(_ n: Int) -> Bool {
  
        var num = n
        var reminder = 0
        var sum = 0
        var ans = false
        var sumSet = Set<Int>()
        //    if n == 1 {
        //        ans =  true
        //    } else if n < 10 && n > 1{
        //        return ans
        //    } else {
    
        while sum != 1 {
            sum = 0
            while num >= 1 {
                reminder = num % 10
                num = num / 10
                sum = sum + (reminder * reminder)
            }
            if sumSet.contains(sum) {
                break
            } else {
                sumSet.insert(sum)
                num = sum
                //print("sum: \(sum), num: \(num)")
            }
        }
        
        if sum == 1 {
            ans = true
        }
        //}
        return ans
}

//isHappy1(2)

func isHappy(_ n: Int, _ set: Set<Int> = Set<Int>() ) -> Bool {
    var sum = 0
    var num = n
    var reminder = 0
    var sumSet = set
    
    while num >= 1 {
        reminder = num % 10
        num = num / 10
        sum = sum + (reminder * reminder)
    }
    
    if sum == 1 {
        return true
    } else if sumSet.contains(sum) {
        return false
    } else {
        sumSet.insert(sum)
        num = sum
    }
   
    return isHappy(sum, sumSet)
}

//isHappy(299)

func isHappy2(_ n: Int) -> Bool {
      var slow = n
      var fast = n
      
      while true {
          slow = getNext(slow)
          fast = getNext(fast)
          fast = getNext(fast)
          
          if slow == fast {
              break
          }
      }
      
      return fast == 1
  }

  private func getNext(_ n: Int) -> Int {
      var sum = 0
      var input = n
          
      while input > 0 {
          let remainder = input % 10
          sum += remainder * remainder
          input /= 10
      }
      
      return sum
  }

func isHappy3(_ n: Int) -> Bool {
    var seen = Set<Int>()
    var n = n
    
    while n != 1 && !seen.contains(n) {
        seen.insert(n)
        n = String(n).reduce(0) { $0 + Int(String($1))! * Int(String($1))! }
    }
    
    return n == 1
}

func forMeasureTime() {
    for _ in 0...10 {
        let elapsed = ContinuousClock().measure {
            isHappy3(199998)
        }
        print(elapsed)
    }
    
}


forMeasureTime()
