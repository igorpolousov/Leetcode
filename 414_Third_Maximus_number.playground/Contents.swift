import UIKit

/*
 Given an integer array nums, return the third distinct maximum number in this array. If the third maximum does not exist, return the maximum number.

  

 Example 1:

 Input: nums = [3,2,1]
 Output: 1
 Explanation:
 The first distinct maximum is 3.
 The second distinct maximum is 2.
 The third distinct maximum is 1.
 
 Example 2:
 Input: nums = [1,2]
 Output: 2
 Explanation:
 The first distinct maximum is 2.
 The second distinct maximum is 1.
 The third distinct maximum does not exist, so the maximum (2) is returned instead.
 
 Example 3:
 Input: nums = [2,2,3,1]
 Output: 1
 Explanation:
 The first distinct maximum is 3.
 The second distinct maximum is 2 (both 2's are counted together since they have the same value).
 The third distinct maximum is 1.
 
 */
let nums = [1,1,2]
let nums_1 = [3,2,1]
let nums_2 = [2,2,3,1]
let nums_3 = [1,1,1,1]

func thirdMax(_ nums: [Int]) -> Int {
    var setSorted = Set(nums).sorted(by: >)
            return setSorted.count <= 2 ? setSorted[0] : setSorted[2]
}

func measureTime() {
    for _ in 0...20 {
        var elapsed = ContinuousClock().measure {
            thirdMax(nums_2)
        }
        print(elapsed)
    }
}

measureTime()
