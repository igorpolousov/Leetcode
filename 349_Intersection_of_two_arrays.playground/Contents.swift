import UIKit

/*
 Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must be unique and you may return the result in any order.

 Example 1:
 Input: nums1 = [1,2,2,1], nums2 = [2,2]
 Output: [2]
 
 Example 2:
 Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
 Output: [9,4]
 Explanation: [4,9] is also accepted.

 */
let nums1 = [4,9,5]
let nums2 = [9,4,9,8,4]

let nums1_1 = [1,2,2,1]
let nums2_1 = [2,2]

func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var ans: [Int] = []
    for num in nums1 {
        if nums2.contains(num) && !ans.contains(num) {
            ans.append(num)
        }
    }
    return ans
}

/*
 Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must appear as many times as it shows in both arrays and you may return the result in any order.


 Example 1:
 Input: nums1 = [1,2,2,1], nums2 = [2,2]
 Output: [2,2]
 
 Example 2:
 Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
 Output: [4,9]
 Explanation: [9,4] is also accepted.
 */

//print(intersection(nums1, nums2))
//print(intersection(nums1_1, nums2_1))

func intesection350(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var ans: [Int] = []
    var nums2 = nums2
    for num in nums1 {
        if let index = nums2.firstIndex(of: num) {
            nums2.remove(at: index)
            ans.append(num)
        }
    }
    return ans
}

//intesection350(nums1_1, nums2_1)

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
       let keys = Set(nums2).intersection(Set(nums1))
       var countsA = nums1.reduce(into: [:]) { $0[$1, default: 0] += 1 }
       var countsB = nums2.reduce(into: [:]) { $0[$1, default: 0] += 1 }
       
       var dups: [Int: Int] = [:]
       for (key, count) in countsA where keys.contains(key) { dups[key] = count }
       for (key, count) in countsB where keys.contains(key) { dups[key] = min(dups[key]!, count) }
       
       return dups.flatMap { [Int](repeating: $0.0, count: $0.1) }
   }

func measureTime() {
    for _ in 0...20 {
         var elapsed = ContinuousClock().measure {
          //intersect(nums1_1, nums2_1)
        intesection350(nums1_1, nums2_1)
             
         }
         print(elapsed)
     }
}


measureTime()
