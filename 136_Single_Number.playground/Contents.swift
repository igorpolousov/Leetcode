import UIKit



var nums = [4,1,2,1,2]

func singleNumber(_ nums: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    for i in 0..<nums.count {
        if dict[nums[i]] != nil {
            dict[nums[i]] = nil
        } else {
            dict[nums[i]] = 1
        }
    }
    let ans = Array(dict.keys)
   
    return ans[0]
   }

singleNumber(nums)


// using XOR operator
func singleNumberXOR(_ nums: [Int]) -> Int {
       var ans = 0
       for num in nums { ans ^= num }
       return ans

   }

let firstBits: UInt8 = 0b00010100
let otherBits: UInt8 = 0b00000101
let outputBits = firstBits ^ otherBits  // равен 00010001
