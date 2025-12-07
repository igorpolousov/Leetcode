import UIKit

/*
 188 Majority element
 
 Given an array nums of size n, return the majority element.

 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.
 
Example 1:

Input: nums = [3,2,3]
Output: 3
 
Example 2:
Input: nums = [2,2,1,1,1,2,2]
Output: 2
 
 */

let nums = [2,2,1,1,1,2,2]
let nums_1 = [1,2,2]

func majorityElement(_ nums: [Int]) -> Int {
    guard nums.count > 1 else { return nums[0]}
    var dict: [Int: Int] = [:]
    for num in nums {
        if dict[num] != nil {
            dict[num]! += 1
            if dict[num]! > nums.count / 2 {
               return num
            }
        } else {
            dict[num] = 1
        }
    }
    return 0
}

func majorityElement_1(_ nums: [Int]) -> Int {
    var ans = 0
    var count = 0
    for num in nums {
        if count == 0 {
            ans = num
        }
        count += (num == ans) ? 1 : -1
        
    }
    return ans
}

// for measure time

func measureTime() {
    for _ in 0...20 {
         var elapsed = ContinuousClock().measure {
            majorityElement_1(nums)
             //majorityElement(nums)
         }
         print(elapsed)
     }
}

measureTime()
