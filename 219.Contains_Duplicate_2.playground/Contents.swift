import UIKit

/*
 219. Contains Duplicate II
 
 Given an integer array nums and an integer k, return true if there are two distinct indices i and j in the array such that nums[i] == nums[j] and abs(i - j) <= k.

  

 Example 1:

 Input: nums = [1,2,3,1], k = 3
 Output: true
 Example 2:

 Input: nums = [1,0,1,1], k = 1
 Output: true
 Example 3:

 Input: nums = [1,2,3,1,2,3], k = 2
 Output: false
 
 */

let nums = [1,0,1,1]
let k = 1

let nums1 = [1,2,3,1,2,3]
let k1 = 2

let nums2 = [1]
let k2 = 1

let nums3 = [99,99]
let k3 = 2

func containsDuplicate2(_ nums: [Int], _ k: Int) -> Bool {
    var dict: [Int: [Int]] = [:]
    for i in 0..<nums.count {
        if dict[nums[i]] == nil {
            var arr: [Int] = []
            arr.append(i)
            dict[nums[i]] = arr
        } else {
            dict[nums[i]]?.append(i)
        }
    }
    for item in dict.values {
        if item.count > 1 {
            for i in 0..<item.count {
                for j in i+1..<item.count {
                    if  abs(item[i] - item[j]) <= k {
                        return true
                    }
                }
            }
        }
    }
    return false
}

func containsDuplicate3(_ nums: [Int], _ k: Int) -> Bool {
    var dict: [Int: [Int]] = [:]
    for i in 0..<nums.count {
        if dict[nums[i]] == nil {
            var arr: [Int] = []
            arr.append(i)
            dict[nums[i]] = arr
        } else {
            dict[nums[i]]?.append(i)
        }
    }
    
    
    for key in dict.keys {
        if dict[key]!.count < 2 {
            dict[key] = nil
        }
    }
    
    print("Log_0 \(dict.values)")
    
    for item in dict.values {
        var dict2: [Int: Int] = [:]
        for i in 0..<item.count {
            let ans = abs(k - item[i])
            print(ans)
            if dict2[ans] == nil {
                dict2[item[i]] = i
                print(dict2)
            } else if dict2[ans] != nil {
                return true
            }
        }
        if abs(item[0] - item[1]) <= k {
            return true
        }
    }
    return false
}

func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
     var dict: [Int:Int] = [:]
     for index in 0..<nums.count {
         if let prevIndex = dict[nums[index]], index - prevIndex <= k {
             return true
         }
         dict[nums[index]] = index
     }

     return false
 }

func forMeasureTime() {
    for _ in 0...10 {
        let elapsed = ContinuousClock().measure {
            containsNearbyDuplicate([1,0,1,1],1)
        }
        print(elapsed)
    }
    
}

//containsDuplicate2(nums1, k1)

forMeasureTime()

//containsDuplicate3(nums3, k3)
