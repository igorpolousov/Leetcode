import UIKit


/*

Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

 

Example 1:

Input: nums = [1,2,3,1]

Output: true

Explanation:

The element 1 occurs at the indices 0 and 3.

 
Example 2:

Input: nums = [1,2,3,4]

Output: false

Explanation:

All elements are distinct.

 
Example 3:

Input: nums = [1,1,1,3,3,4,3,2,4,2]

Output: true

*/


func containDuplicate(_ nums: [Int]) -> Bool {
    var set = Set<Int>()
    for num in nums {
        if set.contains(num) {
            return true
        } else {
            set.insert(num)
        }
    }
    return false
}

//containsDuplicates([1,1,1,3,3,4,3,2,4,2])
func containsDuplicate1<T>(_ array: [T]) -> Bool where T: Hashable {
         var traversed = Set<T>()
         for element in array {
             guard !traversed.contains(element) else { return true }
             traversed.insert(element)
         }
         return false
 }

func containDuplicate2(_ nums: inout [Int]) -> Bool {
    for (index,num) in nums.enumerated() {
        print(num, index)
        let numu = nums[0]
        if numu == num {
            return true
        } else {
            nums.remove(at: index)
        }
    }
    return false
}

func containsDuplicate3(_ nums: [Int]) -> Bool {
    let set = Set(nums)
    if set.count != nums.count {
        return true
    }
    return false
}

func containsDuplicate4(_ nums: [Int]) -> Bool {
    var dict: [Int: Int] = Dictionary()
    for num in nums {
        if dict[num] != nil{
            return true
        } else {
            dict[num] = num
        }
    }
    return false
}

func containsDuplicate5(_ nums: [Int]) -> Bool {
       Set(nums).count != nums.count
   }

func forMeasureTime1() {
    for _ in 0...10 {
        let elapsed = ContinuousClock().measure {
            containsDuplicate4([1,1,1,3,3,4,3,2,4,2])
        }
        print(elapsed)
    }
    
}

forMeasureTime1()

var nums = [1,1,1,3,3,4,3,2,4,2]
//containDuplicate2(&nums)

func forMeasureTime2() {
    var nums = [1,1,1,3,3,4,3,2,4,2]
    for _ in 0...10 {
        let elapsed = ContinuousClock().measure {
            containDuplicate2(&nums)
        }
        print(elapsed)
    }
    
}

//forMeasureTime2()
