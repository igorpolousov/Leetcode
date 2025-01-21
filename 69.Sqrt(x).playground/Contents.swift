import UIKit

/*
 Given a non-negative integer x, return the square root of x rounded down to the nearest integer. The returned integer should be non-negative as well.

 You must not use any built-in exponent function or operator.
 
 */

// чтобы возвести в степень число должно быть умножено само на себя

// x * x = xx 2 * 2 = 4 , 10 * 10 = 100 , 7 * 7 = 49

// попробуем использовать бинарный поиск

func mySqrt(_ x: Int) -> Int {
    var ans = x
    var ansMax = 0
    var ansMin = 0
    ans =  ans / 2
    // Если xx = х
    while ans * ans != x {
        if ansMax - ansMin == 1 {
            return ansMin
        }
        if ans * ans == x {
            return ans
        }  else if  ans * ans < x { // Если хх < х
            ansMin = ans
            ans = ans + 1
        } else if ans * ans > x { // Если xx > x
            ansMax = ans
            ans = ans / 2
        }
    }
    return ans
}

mySqrt(36)


