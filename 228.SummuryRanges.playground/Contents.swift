import UIKit

/*
 228. Summary Ranges

 You are given a sorted unique integer array nums.

 A range [a,b] is the set of all integers from a to b (inclusive).

 Return the smallest sorted list of ranges that cover all the numbers in the array exactly. That is, each element of nums is covered by exactly one of the ranges, and there is no integer x such that x is in one of the ranges but not in nums.

 Each range [a,b] in the list should be output as:

 "a->b" if a != b
 "a" if a == b
  

 Example 1:

 Input: nums = [0,1,2,4,5,7]
 Output: ["0->2","4->5","7"]
 Explanation: The ranges are:
 [0,2] --> "0->2"
 [4,5] --> "4->5"
 [7,7] --> "7"
 Example 2:

 Input: nums = [0,2,3,4,6,8,9]
 Output: ["0","2->4","6","8->9"]
 Explanation: The ranges are:
 [0,0] --> "0"
 [2,4] --> "2->4"
 [6,6] --> "6"
 [8,9] --> "8->9"
 */

let nums = [0,2,3,4,6,8,9]
let nums1 = [0,1,2,4,5,7]
let nums2: [Int] = [1,3]
var range = 0...1

func summuryRanges(_ nums: [Int])-> [String] {
    
    guard !nums.isEmpty else {return []}
  
    
    var ans: [String] = []
    var rs: Int = nums[0]
    var rf: Int?
    
    if nums.count == 1 {
        return ["\(rs)"]
    }
    
    for i in 0..<nums.count-1 {
        
        if nums[i+1] == nums[i] + 1 {
            rf = nums[i+1]
            if i+1 == nums.count - 1 {
                ans.append("\(rs)->\(rf!)")
            }
            print("\(rs) : \(rf!)")
            
        } else  if nums[i+1] != nums[i] {
            
            if let rfs = rf {
                ans.append("\(rs)->\(rfs)")
                rs = nums [i+1]
                rf = nil
                print(" ANS opt: \(rs) : \(ans)")
                if i+1 == nums.count - 1 {
                    ans.append("\(rs)")
                }
            } else {
                ans.append("\(rs)")
                rs = nums [i+1]
                print(" ANS: \(rs) : \(ans)")
                if i+1 == nums.count - 1 {
                    ans.append("\(rs)")
                }
            }
        }
    }
    print(ans)
    return ans
}

//summuryRanges(nums2)

func forMeasureTime() {
    for _ in 0...10 {
        let elapsed = ContinuousClock().measure {
            summuryRanges(nums)
        }
        print(elapsed)
    }
    
}

forMeasureTime()
