import UIKit

/*
 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

 Note that you must do this in-place without making a copy of the array.


 Example 1:
 Input: nums = [0,1,0,3,12]
 Output: [1,3,12,0,0]
 
 Example 2:
 Input: nums = [0]
 Output: [0]
 */


func moveZeroes(_ nums: inout [Int]) {
    var idx = 0
    while idx < nums.count - 1 {
        if nums[idx] == 0 {
            nums[idx] = nums[idx + 1]
            nums[idx + 1] = 0
            idx += 1
        }
    }
}

var nums = [0,1,0,3,12] // 1,0,0,3,12
var nums1 = [0]
var nums2 = [0,0,1]
var nums3 = [1,2]
var nums4 = [1,2,3,4]

moveZeroes(&nums)

func changePlaces(_ nums: inout [Int]) {
        //print(nums)
        let num = nums[0]
        nums.remove(at: 0)
        nums.append(num)
//        nums[0] = nums[1]
//        nums[1] = num
    
    //print(nums)
}
//changePlaces(&nums3)

func moveZeroes1(_ nums: inout [Int]) {
      var rIndex = 0
      
      for i in 0..<nums.count {
          if nums[i] != 0 {
              if rIndex != i {
                  let temp = nums[i]
                  nums[i] = nums[rIndex]
                  nums[rIndex] = temp
              }
              rIndex += 1
          }
      }
  }



func forMeasureTime() {
    var nums = [0,1,0,3,12]
    var nums3 = [1,2]
    for _ in 0...20 {
        var elapsed = ContinuousClock().measure {
            //moveZeroes(&nums)
            changePlaces(&nums3)
        }
           print(elapsed)
       }
   }
//forMeasureTime()
