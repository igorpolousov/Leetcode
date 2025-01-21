import UIKit

func searchInsert1(_ nums: [Int], _ target: Int) -> Int {
    for (index, num) in nums.enumerated() {
        if num == target {
            return index
        } else if num > target {
            return index
        } else if target > nums[nums.count - 1] {
            return nums.count
        }
    }
    return 0
}

let nums1 = [1]
let nums2 = [2]


let nums = [1,3,5,6]

searchInsert(nums, 5)

func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    // if array count == 1
    if nums.count == 1 {
        if nums[0] < target {
            print("Log_1 idx = 1")
            return 1
        } else {
            print("Log_2 idx = 0")
            return 0
        }
        // if target out of array range
    } else if nums[0] > target || nums[nums.count - 1] < target {
        if nums[0] > target {
            print("Log_3 idx = 0")
            return 0
        } else if nums[nums.count - 1] < target {
            print("Log_4 idx = \(nums.count)")
            return nums.count
        }
        // if target in array range
    } else {
        var lowIdx = 0
        var highIdx = nums.count - 1
        var midIdx = (lowIdx + highIdx) / 2
        var midNum = nums[midIdx]
        
        if midNum == target {
            print("Log_5 idx = \(nums.count)")
            return midIdx
        } else {
            while midNum != target {
                if midNum > target {
                    highIdx = midIdx
                    midIdx = (lowIdx + highIdx) / 2
                    midNum = nums[midIdx]
                    if highIdx - lowIdx == 1 && midNum != target {
                        midIdx = lowIdx + 1
                        print("Log_6 idx = \(midIdx)")
                        return midIdx
                    }
                } else if midNum < target {
                    lowIdx = midIdx
                    midIdx = (lowIdx + highIdx) / 2
                    midNum = nums[midIdx]
                    if highIdx - lowIdx == 1 && midNum != target {
                        midIdx = lowIdx + 1
                        print("Log_7 idx = \(midIdx)")
                        return midIdx
                    }
                }
                
            }
            print("Log_8 idx = \(midIdx)")
            return midIdx
        }
    }
    print("Final return")
    return 0
}
