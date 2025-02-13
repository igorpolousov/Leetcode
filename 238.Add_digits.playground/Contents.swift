import UIKit

/*
Given an integer num, repeatedly add all its digits until the result has only one digit, and return it.

Example 1:

Input: num = 38
Output: 2
Explanation: The process is
38 --> 3 + 8 --> 11
11 --> 1 + 1 --> 2
Since 2 has only one digit, return it.
Example 2:

Input: num = 0
Output: 0
 
*/



func addDigits(_ num: Int) -> Int {
    if num < 10 { return num }
    var lastNum = num
    var ans = 0
    var sum = 0
    
    while lastNum > 9 {
        sum = 0
        while lastNum  > 0 {
            let rem = lastNum % 10
            sum += rem
            lastNum = lastNum / 10
        }
        lastNum = sum
        if lastNum < 10 { ans = lastNum }
    }
    return ans
}

//addDigits(num)


func addDigitsReccurion(_ num: Int) -> Int {
    var ans = num
    var sum = 0
    if ans < 10 { return ans }
    
    while ans > 0 {
        let rem = ans % 10
        sum += rem
        ans /= 10
    }
    ans = sum
    
    return addDigitsReccurion(ans)
}

//addDigitsReccurion(num)


func addDigits1(_ num: Int) -> Int {
    if num < 10 { return num }
    var ans = num
    var sum = 0
    
    while ans > 9 {
        sum = 0
        while ans  > 0 {
            let rem = ans % 10
            sum += rem
            ans = ans / 10
        }
        ans = sum
        if ans < 10 { return ans}
    }
    return ans
}

//addDigits1(num)

func forMeasureTime() {
    let num = 1991010199212909
    for _ in 0...10 {
        let elapsed = ContinuousClock().measure {
            addDigitsReccurion(num)
        }
        print(elapsed)
    }
    
}

forMeasureTime()
