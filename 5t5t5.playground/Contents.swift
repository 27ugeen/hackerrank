import Foundation

//var binary = String(repeating: "1", count: 40000)
var binary = "00000111"

func solution(_ str: inout String) -> Int {
    str = str.replacingOccurrences(of: "^0+", with: "", options: .regularExpression)
    
    var counter = 0
    let endIdx = str.index(before: str.endIndex)
    var subStr = str[...endIdx]
    var strCount = subStr.count
    
    while (true) {
        if strCount <= 0 {
            break
        }
        
        if subStr.last == "1" {
            if strCount == 1 {
                counter += 1
            } else {
                counter = counter + 2
            }
        } else {
            counter += 1
        }
        
        strCount = strCount - 1
        subStr = skipLast(subStr)
    }
    
    return counter
}

// native method dropLast is super slow...
func skipLast(_ str: String.SubSequence) -> String.SubSequence {
    let endIdx = str.index(before: str.endIndex)
    let subStr = str[..<endIdx]
    return subStr
}

print(solution(&binary))
