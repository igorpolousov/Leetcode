import UIKit

func longestCommonPrefix(_ strs: [String]) -> String {
    var ans: String = ""
    var tmpStrs =  strs
    var strSet: Set<String> = []
    for (index,elem) in tmpStrs.enumerated() {
        strSet.insert(String(tmpStrs[0].first!))
        if strSet.contains(String(elem.first!)) {
            tmpStrs[index].removeFirst()
            print(strSet)
            print(tmpStrs)
        } else {
            return ""
        }
        
    }
    return ans
}

longestCommonPrefix(["flower", "flow","floght"])
