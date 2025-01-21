import UIKit

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var ans = [Int]()
    for num in nums {
        if num != val {
            nums.removeAll { num1 in
                num1 == val
            }
            //ans.append(num)
        }
    }
    //nums = ans
    return nums.count
   }

var arr = [0,1,2,2,3,0,4,2]
var arr1 = [1]

removeElement(&arr1, 1)


func removeElement1(_ nums: inout [Int], _ val: Int) -> Int {
    nums.removeAll(where: {$0 == val})
    return nums.count
}

removeElement1(&arr1, 1)
