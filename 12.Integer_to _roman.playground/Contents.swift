import UIKit

/*
 Seven different symbols represent Roman numerals with the following values:

 Symbol    Value
 I    1
 V    5
 X    10
 L    50
 C    100
 D    500
 M    1000
 
 Roman numerals are formed by appending the conversions of decimal place values from highest to lowest. Converting a decimal place value into a Roman numeral has the following rules:

 If the value does not start with 4 or 9, select the symbol of the maximal value that can be subtracted from the input, append that symbol to the result, subtract its value, and convert the remainder to a Roman numeral.
 
 If the value starts with 4 or 9 use the subtractive form representing one symbol subtracted from the following symbol, for example, 4 is 1 (I) less than 5 (V): IV and 9 is 1 (I) less than 10 (X): IX. Only the following subtractive forms are used: 4 (IV), 9 (IX), 40 (XL), 90 (XC), 400 (CD) and 900 (CM).
 
 Only powers of 10 (I, X, C, M) can be appended consecutively at most 3 times to represent multiples of 10. You cannot append 5 (V), 50 (L), or 500 (D) multiple times. If you need to append a symbol 4 times use the subtractive form.
 Given an integer, convert it to a Roman numeral.
 
 Example 1:
 Input: num = 3749

 Output: "MMMDCCXLIX"

 Explanation:

 3000 = MMM as 1000 (M) + 1000 (M) + 1000 (M)
  700 = DCC as 500 (D) + 100 (C) + 100 (C)
   40 = XL as 10 (X) less of 50 (L)
    9 = IX as 1 (I) less of 10 (X)
 Note: 49 is not 1 (I) less of 50 (L) because the conversion is based on decimal places
 
 Example 2:
 Input: num = 58

 Output: "LVIII"

 Explanation:

 50 = L
  8 = VIII
 
 Example 3:
 Input: num = 1994

 Output: "MCMXCIV"

 Explanation:

 1000 = M
  900 = CM
   90 = XC
    4 = IV
 */

// Constraints: 1 <= num <= 3999

// Выяснить сколько заданное число содержит: тысяч, сотен, десятков и число меньше 10
// Число 3998 содержит: 3 - тысячи, 9 - сотен, 9 - десятков и 8-ку
// 58



func intToRoman(_ num: Int) -> String {
    var num = num
    var ans = ""
    var leg: [Int] = []
    var counter = 0

    // Единицы
    let dict0: [Int: String] = [
        0 : "",
       1 : "I",
       2 : "II",
       3 : "III",
       4 : "IV",
       5 : "V",
       6 : "VI",
       7 : "VII",
       8 : "VIII",
       9 : "IX",
       ]
    // Десятки
    let dict1 = [
        0 : "",
       1 : "X",
       2 : "XX",
       3 : "XXX",
       4 : "XL",
       5 : "L",
       6 : "LX",
       7 : "LXX",
       8 : "LXXX",
       9 : "XC"
       ]
    // Сотни
    let dict2 = [
        0 : "",
       1 : "C",
       2 : "CC",
       3 : "CCC",
       4 : "CD",
       5 : "D",
       6 : "DC",
       7 : "DCC",
       8 : "DCCC",
       9 : "CM"
       ]
    // Тысячи
    let dict3 = [
        0 : "",
       1 : "M",
       2 : "MM",
       3 : "MMM"
    ]
    
    while num > 0 {
        let rem = num % 10
        leg.append(rem)
        num /= 10
    }
    
 
    let legCount = leg.count
    if leg.count == 1 {
        ans = dict0[leg[0]]!
    } else if leg.count == 2 {
        ans = dict1[leg[1]]! + dict0[leg[0]]!
    } else if leg.count == 3 {
        ans = dict2[leg[2]]! + dict1[leg[1]]! + dict0[leg[0]]!
    } else if leg.count == 4 {
        ans = dict3[leg[3]]! + dict2[leg[2]]! + dict1[leg[1]]! + dict0[leg[0]]!
    }
    
   // print(ans)
  
    return ans
}

//intToRoman(1994)
//intToRoman1(1994)

func intToRoman1(_ num: Int) -> String {
    var num = num
    var counter = 0
    var ans = ""
    
    
    
    let arrOfDicts = [
        // Единицы
        [
            0 : "",
            1 : "I",
            2 : "II",
            3 : "III",
            4 : "IV",
            5 : "V",
            6 : "VI",
            7 : "VII",
            8 : "VIII",
            9 : "IX",
        ],
        // Десятки
        [
            0 : "",
            1 : "X",
            2 : "XX",
            3 : "XXX",
            4 : "XL",
            5 : "L",
            6 : "LX",
            7 : "LXX",
            8 : "LXXX",
            9 : "XC"
        ],
        // Сотни
        [
            0 : "",
            1 : "C",
            2 : "CC",
            3 : "CCC",
            4 : "CD",
            5 : "D",
            6 : "DC",
            7 : "DCC",
            8 : "DCCC",
            9 : "CM"
        ],
        // Тысячи
        [
            0 : "",
            1 : "M",
            2 : "MM",
            3 : "MMM"
        ]
    ]
    
    
    while num > 0 {
        let rem = num % 10
        //let dictToAdd = arrOfDicts[counter]
        ans.insert(contentsOf: arrOfDicts[counter][rem]!, at: ans.startIndex)
        //leg.append(rem)
        num /= 10
        counter += 1
    }
    //print(ans)
    return ans
}


func forMeasureTime() {
    for _ in 0...20 {
        var elapsed = ContinuousClock().measure {
            intToRoman(1994)
            //intToRoman1(1994)
        }
        print(elapsed)
    }
}

forMeasureTime()
