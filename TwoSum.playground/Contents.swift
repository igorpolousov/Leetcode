import UIKit

// brute force + sum создаём временный массив без каждого элемента в массиве и проверяем сумму данного элемента и каждого числа в массиве на равенство таргету
func twoSumBrtForce(_ nums: [Int], _ trg: Int) -> [Int] {
    var ans: [Int] = []
    for (index, num) in nums.enumerated() {
        var tmpArr: [Int] = nums
        tmpArr.remove(at: index)
        for i in tmpArr {
            if num + i == trg {
                ans.append(index)
            }
        }
    }
    return ans
}

//twoSumBrtForce([2,3,2,5,4], 6)


// два решения ниже одинаковы по сути только в одном используеся сумма а в другом разность и в дополнение удаляются числа которые больше или равны trg

// brute force terget - num , берем таргет минус каждое число из заданного массива, получившееся число сравниваем с оставшимися в массиве. по сравнению с первым решением нужно делать дополнительные действия

func twoSumBrtFrcTrgetMinusNum(_ nums: [Int], _ trg: Int) -> [Int] {
    var ans: [Int] = []
    var tmpArr1: [Int] = nums
    for (index1, num1) in tmpArr1.enumerated() {
        var tmpArr2: [Int] = nums
        tmpArr2[index1] = trg // непонятно как убрать используемый элемент чтобы сохранить размер массива
        for (index2, num2) in tmpArr2.enumerated() {
            if trg - num1 == num2 {
                ans.append(index1)
                ans.append(index2)
                print(ans)
            }
        }
    }
    //print(ans)
    return ans
}

//twoSumBrtFrcTrgetMinusNum([2,3,5,4,6], 6)


func twoSumRmvNumbr(_ nums: [Int], _ trg: Int) -> [Int] {
    var ans: [Int] = []
    var tmpArr = nums
    for (index1,num1) in tmpArr.enumerated() {
        if num1 >= trg {
            continue
            //tmpArr[index1] = 0
        } else {
            for (index2,num2) in tmpArr.enumerated() {
                if index1 == index2 {
                    continue
                } else {
                    if trg - num1 == num2 && !ans.contains(index1) && !ans.contains(index2){
                        ans.append(index1)
                        ans.append(index2)
                    }
                }
            }
        }
    }
    return ans
}


// решение через hash таблицу или словарь оказалось самым быстрым
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
     var dict = [Int: Int]()
     
     for (index, value) in nums.enumerated() {
         if let addent = dict[value] {
             print("dict value \(dict[value] ?? 0)")
             print("addent \(addent)")
             print("cond1 \(dict)")
             return [addent, index]
         } else {
             dict[target - value] = index
             print("cond2 \(dict)")
         }
     }
     
     return []
 }

twoSum([6,7,2,3,5,4], 5)

