import UIKit


let s = "Hello world "

func lengthOfLastWord(_ s: String) -> Int {
    var ans = 0
    var count = 0
    
    for char in s.reversed() {
        if char.isLetter {
            ans += 1
            count += 1
        } else if count > 0 {
            return ans
        }
    }
    return ans
   }

lengthOfLastWord(s)
