import UIKit

/*
 485. Max Consecutive Ones
 
 Given a binary array nums, return the maximum number of consecutive 1's in the array.

 Example 1:

 Input: nums = [1,1,0,1,1,1]
 Output: 3
 Explanation: The first two digits or the last three digits are consecutive 1s. The maximum number of consecutive 1s is 3.
 Example 2:

 Input: nums = [1,0,1,1,0,1]
 Output: 2
 
 */

let nums1 = [1,1,0,1,1,1]
let nums2 = [1,0,1,1,0,1]

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var maxAns = 0
    var curAns = 0
    var index = 0
    
    while index < nums.count {
        if nums[index] == 1 {
            curAns += 1
        } else if nums[index] == 0 {
            curAns = 0
        }
        index += 1
        if curAns > maxAns {
            maxAns = curAns
        }
    }
    return maxAns
}

// am besten
func findMaxConsecutiveOnes1(_ nums: [Int]) -> Int {
    var maxCount = 0
     var currentCount = 0
     for num in nums {
         if num == 1 {
             currentCount += 1
             if currentCount > maxCount {
                 maxCount = currentCount
             }
         } else {
             currentCount = 0
         }
     }
     return maxCount
}

//print(findMaxConsecutiveOnes(nums2))

func measureTime() {
    for _ in 0...20 {
        var elapsed = ContinuousClock().measure {
            findMaxConsecutiveOnes1(nums1)
        }
        print(elapsed)
    }
}

measureTime()
