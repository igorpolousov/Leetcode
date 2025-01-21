import UIKit


func removeDuplicates1(_ nums: inout [Int]) -> Int {
    let newSet = Set(nums)
    nums = Array(newSet.sorted())
    return nums.count
   }

var arr = [1,1,2]


var arr1 = [0,0,1,1,1,2,2,3,3,4]
var arr2 = [0,1,2,2,2,3]  // [0,1,3,3,3,3,4]

func binary(_ nums: inout [Int]) -> Int {
    var lowIdx = 0
    var highIdx = nums.count - 1
    var midIdx = (lowIdx + highIdx) / 2
    
    for _ in 1..<nums.count {
        
        if nums[midIdx] == nums[lowIdx] + 1 {
            print("Log_1 : \(nums[midIdx])")
            nums[lowIdx + 1] = nums[midIdx]
            print("Log_2: \(nums)")
            lowIdx += 1
            highIdx = nums.count - 1
            midIdx = (lowIdx + highIdx) / 2
            print("Log_3: \(midIdx) \(lowIdx) \(highIdx)")
            
        } else if nums[midIdx] > (nums[lowIdx] + 1) {
            highIdx = midIdx
            midIdx = (lowIdx + highIdx) / 2
            print("Log_4 : \(highIdx) \(midIdx)")
            if lowIdx == midIdx + 1 {
                nums[lowIdx + 1] = nums[midIdx]
                lowIdx += 1
            }
        }
    }
    return lowIdx + 1
}

binary(&arr2)

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var idx = 0
    for i in 1..<nums.count {
        if nums[i] != nums[idx] {
            nums[idx + 1] = nums[i]
            idx += 1
        }
    }
    return idx + 1
}


//removeDuplicates(&arr2)





func removeDuplicates2(_ nums: inout [Int]) -> Int {
      
      var curIndex = 0
    
      for i in 1..<nums.count {
          if nums[i] != nums[curIndex] {
              nums[curIndex + 1] = nums[i]
              
              curIndex = curIndex + 1
          }
      }
      return curIndex + 1
  }

//removeDuplicates2(&arr1)
