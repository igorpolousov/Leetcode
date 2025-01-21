import UIKit



//сам решил лучшее решение на leetcode на 24.11.24
func isValid(_ s: String) -> Bool {
    guard s.count % 2 == 0 else { return false }
    var arr: [String] = []
    for i in s {
        arr.append(String(i))
        
        if i == ")" && arr.count > 1 && arr[arr.count - 2] == "(" {
            arr.remove(at: arr.count - 1)
            arr.remove(at: arr.count - 1)
            
        } else if i == "]" && arr.count > 1 && arr[arr.count - 2] == "[" {
            arr.remove(at: arr.count - 1)
            arr.remove(at: arr.count - 1)
            
        } else if i == "}" && arr.count > 1 && arr[arr.count - 2] == "{" {
            arr.remove(at: arr.count - 1)
            arr.remove(at: arr.count - 1)
        }
    }

    return arr.isEmpty ? true : false
}

isValid("){")
//isValid("()[]}")

func isValid1(_ s: String) -> Bool {
    guard s.count % 2 == 0 else { return false }
    var arrParentheses: [String] = []
    var arrBrackets: [String] = []
    var arrCurlyBrackets: [String] = []
    
    var oneArr: [String] = []
    
        for i in s {
            if i == "(" {
                arrParentheses.append(String(i))
                
            } else if i == "[" {
                arrBrackets.append(String(i))
                
            } else if i == "{"{
                arrCurlyBrackets.append(String(i))
                
            } else if i == ")" {
                guard !arrParentheses.isEmpty else { return false }
                arrParentheses.remove(at: arrParentheses.count - 1)
               
            } else if i == "]" {
                guard !arrBrackets.isEmpty else { return false }
                arrBrackets.remove(at: arrBrackets.count - 1)
                
            } else if i == "}" {
                guard !arrCurlyBrackets.isEmpty else { return false }
                arrCurlyBrackets.remove(at: arrCurlyBrackets.count - 1)
                
            }
        }
    
    if !arrBrackets.isEmpty && !arrParentheses.isEmpty && !arrCurlyBrackets.isEmpty {
        return false
    }
    return true
}
