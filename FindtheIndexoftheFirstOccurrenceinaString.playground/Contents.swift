import UIKit

var haystack = "sadbutsad"
var needle = "sad"

var haystack1 = "leetcode"
var needle1 = "leeto"

func strStr(_ haystack: String, _ needle: String) -> Int {
    if let range: Range<String.Index> = haystack.range(of: needle) {
        let index: Int = haystack.distance(from: haystack.startIndex, to: range.lowerBound)
        return index
    } else {
        return -1
    }
    
}

strStr(haystack1, needle1)
