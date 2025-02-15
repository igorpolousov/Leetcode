import UIKit

/*
 Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.

  

 Example 1:

 Input: nums = [3,0,1]

 Output: 2

 Explanation:

 n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.

 Example 2:

 Input: nums = [0,1]

 Output: 2

 Explanation:

 n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.

 Example 3:

 Input: nums = [9,6,4,2,3,5,7,0,1]

 Output: 8

 Explanation:

 n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 8 is the missing number in the range since it does not appear in nums.
 */

let nums = [1,0,3]
let nums1 = [0,1]

func missingNumber(_ nums: [Int]) -> Int {
    var sum = 0
    for i in 0...nums.count - 1 {
        sum += (i - nums[i])
    }
  
    return sum + nums.count
}

//missingNumber(nums)

func forMeasureTime() {
    for _ in 0...20 {
        var elapsed = ContinuousClock().measure {
            missingNumber(nums)
        }
        print(elapsed)
    }
    
    
}

func missingNumber1(_ nums: [Int]) -> Int {
       return (0...nums.count).reduce(0,+) - nums.reduce(0,+)
   }

forMeasureTime()


