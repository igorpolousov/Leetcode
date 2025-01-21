import Foundation

func plusOne(_ digits: [Int]) -> [Int] {
    let lastIndex = digits.count - 1
    var resArray: [Int] = digits
    if digits[lastIndex] != 9 {
        resArray[lastIndex] += 1
        return resArray
    } else {
        var number: Int128 = 0
        for i in 0..<resArray.count {
            number = number * 10 + Int128(resArray[i])
        }
        number += 1
        resArray.removeAll()
        while number > 0 {
            let reminder = number % 10
            resArray.insert(Int(reminder), at: 0)
            number = number / 10
        }
        return resArray
    }
}

let arr = [5,2,2,6,5,7,1,9,0,3,8,6,8,6,5,2,1,8,7,9,8,3,8,4,7,2,5,8,9]

//plusOneFast([5,2,2,6,5,7,1,9,0,3,8,6,8,6,5,2,1,8,7,9,8,3,8,4,7,2,5,8,9])
plusOneFast([9,9])

func plusOneFast(_ digits: [Int]) -> [Int] {
       var digits = digits

       for i in (0..<digits.count).reversed() {
           print(i)
           guard digits[i] == 9 else {
               //digits[i] += 1
               print(digits[i])
               return digits
           }

           digits[i] = 0
           //print(digits[i])
       }

       digits.insert(1, at: 0)
       return digits
   }
