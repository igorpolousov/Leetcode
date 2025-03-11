import UIKit

/*
 Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

 The overall run time complexity should be O(log (m+n)).

  

 Example 1:

 Input: nums1 = [1,3], nums2 = [2]
 Output: 2.00000
 Explanation: merged array = [1,2,3] and median is 2.
 Example 2:

 Input: nums1 = [1,2], nums2 = [3,4]
 Output: 2.50000
 Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
 */

//let nums2 = [1,2,3,4,5,6]
//let nums1 = [7,8,9,10,11,12,13,14,15,16,17]

let nums1 = [1001]
let nums2 = [1000]

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    if !nums1.isEmpty && !nums2.isEmpty {
        var i = 0
        var j = 0
        var totalSum = nums1.count + nums2.count
        var nums: [Int] = []
        var lastNumIndex = 0
        
        if totalSum % 2 != 0 {
            lastNumIndex = (totalSum - 1) / 2
        } else if totalSum % 2 == 0 {
            lastNumIndex = totalSum / 2
        }
        
        while nums.count < lastNumIndex + 1 {
            if i < nums1.count && nums2[j] > nums1[i] {
                nums.append(nums1[i])
                i += 1
            } else {
                nums.append(nums2[j])
                if j < nums2.count - 1 {
                    j += 1
                }
                
            }
        }
        return totalSum % 2 == 0 ? Double(nums[lastNumIndex] + nums[lastNumIndex - 1]) / 2 : Double(nums[lastNumIndex])
    }
    let ans = nums1 + nums2
    return ans.count % 2 == 0 ? Double(ans[ans.count / 2] + ans[(ans.count / 2) - 1]) / 2 : Double(ans[(ans.count - 1)/2])
}

findMedianSortedArrays(nums1, nums2)
