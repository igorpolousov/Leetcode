import UIKit

/*
 You are given two integer arrays nums1 and nums2, sorted in non-decreasing order, and two integers m and n, representing the number of elements in nums1 and nums2 respectively.

 Merge nums1 and nums2 into a single array sorted in non-decreasing order.

 The final sorted array should not be returned by the function, but instead be stored inside the array nums1. To accommodate this, nums1 has a length of m + n, where the first m elements denote the elements that should be merged, and the last n elements are set to 0 and should be ignored. nums2 has a length of n.

  

 Example 1:

 Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
 Output: [1,2,2,3,5,6]
 Explanation: The arrays we are merging are [1,2,3] and [2,5,6].
 The result of the merge is [1,2,2,3,5,6] with the underlined elements coming from nums1.
 Example 2:

 Input: nums1 = [1], m = 1, nums2 = [], n = 0
 Output: [1]
 Explanation: The arrays we are merging are [1] and [].
 The result of the merge is [1].
 Example 3:

 Input: nums1 = [0], m = 0, nums2 = [1], n = 1
 Output: [1]
 Explanation: The arrays we are merging are [] and [1].
 The result of the merge is [1].
 Note that because m = 0, there are no elements in nums1. The 0 is only there to ensure the merge result can fit in nums1.
 
 */

var nums1 = [0]
let m = 3

let nums2 = [1]
let n = 3

var low = 0
var high = nums1.count - 1

for num in nums2 {

    high = nums1.count - 1
 
    while low <= high {
        let mid = (low + high) / 2
        let midValue = nums1[mid]
        
        if midValue == num {
            nums1.insert(num, at: mid)
            break
        } else if midValue < num {
          low = mid + 1
        } else {
            high = mid - 1
        }
    }
}

print(nums1)

var lastA = m - 1
       var lastB = n - 1
       var curr = nums1.count - 1

       while lastA >= 0, lastB >= 0 {
           if nums1[lastA] >= nums2[lastB] {
               nums1[curr] = nums1[lastA]
               lastA -= 1
           } else {
               nums1[curr] = nums2[lastB]
               lastB -= 1
           }
           curr -= 1
       }

       while lastB >= 0 {
           nums1[curr] = nums2[lastB]
           lastB -= 1
           curr -= 1
       }
