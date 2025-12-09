import UIKit

/*
 448. Find All Numbers Disappeared in an Array
 Easy

 Given an array nums of n integers where nums[i] is in the range [1, n], return an array of all the integers in the range [1, n] that do not appear in nums.

 Example 1:
 Input: nums = [4,3,2,7,8,2,3,1]
 Output: [5,6]
 
 Example 2:
 Input: nums = [1,1]
 Output: [2]
 */

let nums1 = [4,3,2,7,8,2,3,1]
let nums2 = [1,1]

func findDisapperedNumbers(_ nums: [Int]) -> [Int] {
    guard !nums.isEmpty else {return nums}
    return Array( Set(1...nums.count).subtracting(nums))
}

findDisapperedNumbers(nums1)


func findDisapperedNumbers1(_ nums: [Int]) -> [Int] {
    var ans: [Int] = []
    var nums = nums

      for n in nums {
          let index = abs(n) - 1
          if nums[index] > 0 {
              nums[index] = -nums[index]
          }
      }

      for i in 0..<nums.count {
          if nums[i] > 0 {
              ans.append(i + 1)
          }
      }

    return ans
}
