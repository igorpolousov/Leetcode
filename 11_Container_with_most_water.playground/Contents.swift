import UIKit


/*
 11. Container With Most Water
 Medium

 Hint
 You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).

 Find two lines that together with the x-axis form a container, such that the container contains the most water.

 Return the maximum amount of water a container can store.

 Notice that you may not slant the container.

Максимальное количество воды - это максимальная площадь, которая складывается из длины( индекса в массиве) и высоты ( значения по индексу в массиве)
 
 надо найти в массиве две пары максимальных числел?

 Example 1:


 Input: height = [1,8,6,2,5,4,8,3,7]
 Output: 49
 Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.
 
 Example 2:

 Input: height = [1,1]
 Output: 1
 */

let heights_1: [Int] = [1,8,6,2,5,4,8,3,7]
let heights_2: [Int] = [1,2,1]
let heights_3: [Int] = [1,2,3,1000,9]

func maxArea(_ heights: [Int]) -> Int {
    var ans = 0
    var maxEnd = [0,0]
    var maxStart = [0,0]
    var startMult = 0
    var endMult = 0
    
    
    let reversedHeights = heights.reversed()
    
    for (index, item) in reversedHeights.enumerated() {
        if index * item >= startMult {
            startMult = index * item
            maxStart[0] = item
            maxStart[1] = index
        }
    }
    
    for (index, item) in heights.enumerated() {
        if index * item >= endMult {
            endMult = index * item
            maxEnd[0] = item
            maxEnd[1] = index
        }
    }
    
    let height = min(maxStart[0], maxEnd[0])
    let length = maxEnd[1] - ((heights.count - 1) - maxStart[1])
    
    ans = height * length
   
    return ans
}
func maxArea_l(_ height: [Int]) -> Int {
    var start = 0
           var end = height.count - 1
           var ans = 0
           
           while start < end {
               ans = max(ans, min(height[start], height[end]) * (end - start))
               if height[start] < height[end] { start += 1 } else { end -= 1 }
           }
           
           return ans
}

//maxArea(heights_1)
//maxArea_l(heights_1)

func forMeasureTime() {
    for _ in 0...1 {
        let elapsed = ContinuousClock().measure {
            maxArea(heights_1)
        }
        print(elapsed)
    }
    
    let elapsed = ContinuousClock().measure {
        maxArea(heights_1)
    }
    print(elapsed)
}

forMeasureTime()
