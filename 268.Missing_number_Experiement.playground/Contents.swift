import UIKit
import XCTest


/*
 Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.

  

 Example 1:

 Input: nums = [3,0,1]

 Output: 2

 Explanation:

 n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.

 Example 2:

 Input: nums = [0,1]

 Output: 2

 Explanation:

 n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.

 Example 3:

 Input: nums = [9,6,4,2,3,5,7,0,1]

 Output: 8

 Explanation:

 n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 8 is the missing number in the range since it does not appear in nums.
 */

let nums = [1,0,3]
let nums1 = [0,1]
let nums2 = [9,6,4,2,3,5,7,0,1]


//DispatchQueue.global(qos: .background).async {
//    var sum = 0
//    for i in 0...nums.count - 1 {
//        sum += (i - nums[i])
//    }
//    sum += nums.count
//}

func missingNumber(_ nums: [Int]) -> Int {
    var sum = 0
    for i in 0...nums.count - 1 {
        sum += (i - nums[i])
    }
    return sum + nums.count
}

func asyncMissingNumber(_ nums: [Int]) async -> Int {
    var sum = 0
    Task {
        for i in 0...nums.count - 1 {
            sum += (i - nums[i])
        }
        sum + nums.count
    }
    return sum
}


extension Array {
    func sum() -> Int{
        var sum = 0
        for item in self {
            sum += item as! Int
        }
        return sum
    }
}


func missingNumber2(_ nums: [Int]) -> Int {
    var ans = nums.sum()
    for i in 0...nums.count  {
        ans -= i
    }
    return ans * -1
}


//missingNumber2(nums1)


    
func missingNumber1(_ nums: [Int]) -> Int {
       return (0...nums.count).reduce(0,+) - nums.reduce(0,+)
   }

func forMeasureTime() {
    for _ in 0...20 {
        var elapsed = ContinuousClock().measure {
           //missingNumber(nums2)
            //missingNumber1(nums2)
            DispatchQueue.global(qos: .background).async {
                var sum = 0
                for i in 0...nums2.count - 1 {
                    sum += (i - nums2[i])
                }
                sum += nums2.count
            }
//            DispatchQueue.global(qos: .background).async {
//                (0...nums2.count).reduce(0,+) - nums2.reduce(0,+)
//            }
        }
        print(elapsed)
    }
}

//forMeasureTime()

func forMeasuretime1()  {
    let start = NSDate()
    for _ in 1...20 {
        //missingNumber1(nums)
        //missingNumber(nums2)
         //missingNumber1(nums2)
        //await asyncMissingNumber(nums2)
//         DispatchQueue.global(qos: .background).async {
//             var sum = 0
//             for i in 0...nums2.count - 1 {
//                 sum += (i - nums2[i])
//             }
//             sum += nums2.count
//         }
//            DispatchQueue.global(qos: .background).async {
//                (0...nums2.count).reduce(0,+) - nums2.reduce(0,+)
//            }
        let elapsed = NSDate().timeIntervalSince(start as Date)
        print(elapsed)
    }
    
    
}

 forMeasuretime1()

class TimeTest: XCTestCase {
    var nums = [1,0,3]
    var nums1 = [1,0]
    var nums2 = [9,6,4,2,3,5,7,0,1]
    
//    func testDirectSum() {
//        measure {
//            missingNumber(nums2)
//        }
//    }
    
    func testReduce() {
        measure {
            missingNumber1(nums2)
        }
    }
    
//    func testDispatch() {
//        measure {
//            DispatchQueue.global(qos: .userInteractive).async {
//                var sum = 0
//                for i in 0...self.nums2.count - 1 {
//                    sum += (i - self.nums2[i])
//                }
//                sum += self.nums2.count
//            }
//        }
//    }
}

//TimeTest.defaultTestSuite.run()
