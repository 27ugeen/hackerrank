import UIKit

let arr = [8,9,7,6,5,4,1,2,3,0,]

let familyModel = """
[
    {
        "id": 1,
        "name": "family 1",
        "products": [
            {
                "id": 0,
                "name": "product 0"
            },
            {
                "id": 1,
                "name": "product 1"
            },
            {
                "id": 2,
                "name": "product 2"
            },
            {
                "id": 3,
                "name": "product 3"
            }
        ]
    },
    {
        "id": 2,
        "name": "family 2",
        "products": [
            {
                "id": 4,
                "name": "product 4"
            },
            {
                "id": 5,
                "name": "product 5"
            },
            {
                "id": 6,
                "name": "product 6"
            }
        ]
    },
    {
        "id": 3,
        "name": "family 13",
        "products": [
            {
                "id": 7,
                "name": "product 7"
            },
            {
                "id": 8,
                "name": "product 8"
            },
            {
                "id": 9,
                "name": "product 9"
            }
        ]
    }
]
"""

struct ProdModel: Decodable, CustomStringConvertible {
    
    let id: Int
    let name: String
    
    var description: String {
        return "id: \(id), name: \(name)"
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
    }
    
    
}


struct DataModel: Decodable, CustomStringConvertible {
    
    let id: Int
    let name: String
    let products: [ProdModel]
    
    var description: String {
        return "id: \(id), name: \(name)"
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case products
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(Int.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        products = try container.decode([ProdModel].self, forKey: .products)
    }
}

/*
 In the Swift file, write a program to read in the JSON object which contains a data key and the value is a string which contains items in the format: key=STRING, age=INTEGER. Your goal is to count how many items exist that have an age equal to or greater than 50, and print this final value.
 
 Example Input
 {"data":"key=IAfpK, age=58, key=WNVdi, age=64, key=jp9zt, age=47"}
 
 Example Output
 2
 */


//func takeProdData() {
//
//    var products: [ProdModel] = []
//    var res: [String] = []
//
//    if let data = familyModel.data(using: .utf8) {
//        do {
//            let product = try JSONDecoder().decode([DataModel].self, from: data)
//
//            product.forEach { el in
//                products.append(contentsOf: el.products)
//            }
////            print(products)
//
//            arr.forEach { idx in
////               let newEl = products
////                    .filter { $0.id == idx }
////                    .map { $0.name }
//
//                if products.contains(where: {$0.id == idx}) {
//                    let newEl = products[idx].name
//                    res.append("\(newEl)")
//                }
//            }
//
////            arr.forEach { idx in
////                product.forEach { prod in
////                    let newEl = prod.products.filter { $0.id == idx }
////                    res.append(contentsOf: newEl)
////                }
////            }
//
//            print("result: \(res)")
//        }  catch let error {
//            print(error)
//        }
//    }
//}
//
//takeProdData()

/*
 Back-end Challenge
 
 You are building a small part of this iOS application that prints out log items. The Swift function LogDumpGetUnique has a small set of log items stored in a string. Each log item is separated by a semicolon. Your goal is to return a new string with the following requirements:
 
 1. Remove log items that are duplicates based on username.
 2. From each log item, remove the id=NUM property and value.
 
 For items that are duplicated based on the username, keep the first one that appears in the list and remove the subsequent items.
 
 The iOS device on the right side takes in your output and presents it on screen in a formatted way so you can easily visualize the log items.
 
 Example Input
 name=Dan B, username=db, email=db@gmail.com, id=123; name=Hannah, username=hsmith, id=333, email=hsm@test.com; name=Dan Brick, username=db, email=db@gmail.com, id=663;
 
 Example Output
 name=Dan B, username=db, email=db@gmail.com; name=Hannah, username=hsmith, email=hsm@test.com;
 */

//func LogDumpGetUnique() -> String {
//
//    let logDump = "name=John Trust, username=john3, email=john3@gmail.com, id=434453; name=Hannah Smith, username=hsmith, email=hsm@test.com, id=23312; name=Hannah Smith, username=hsmith, id=3223423, email=hsm@test.com; name=Robert M, username=rm44, id=222342, email=rm@me.com; name=Robert M, username=rm4411, id=5535, email=rm@me.com; name=Susan Vee, username=sv55, id=443432, email=susanv123@me.com; name=Robert Nick, username=rnick33, id=23432, email=rnick@gmail.com; name=Robert Nick II, username=rnickTemp34, id=23432, email=rnick@gmail.com; name=Susan Vee, username=sv55, id=443432, email=susanv123@me.com;"
//
//    let logArr = logDump.split(separator: ";")
//    var duplicates: [String:String] = [:]
//
//    logArr.forEach { el in
//        var res: [String:String] = [:]
//        let entries = el.split(separator: ",")
//        for (_, e) in entries.enumerated() {
//            let kv = e.split(separator: "=")
//            if kv.count == 2 {
//                var key = String(kv[0]).trimmingCharacters(in: .whitespacesAndNewlines)
//                var value = String(kv[1]).trimmingCharacters(in: .whitespacesAndNewlines)
//                if key == "id" {
//                    continue
//                }
//                res[key] = value
//            }
//        }
//
//        if duplicates[res["username"]!] == nil {
//            var ll = [String]()
//            res.forEach { l in
//                ll.append(l.key + "=" + l.value)
//            }
//            duplicates[res["username"] ?? ""] = ll.sorted(by: <).joined(separator: ", ")
//        }
//    }
//    return duplicates.values.joined(separator: "; ") + ";"
//}
//print(LogDumpGetUnique())
/*
 Example Input
 name=Dan B, username=db, email=db@gmail.com, id=123; name=Hannah, username=hsmith, id=333, email=hsm@test.com; name=Dan Brick, username=db, email=db@gmail.com, id=663;
 
 Example Output
 name=Dan B, username=db, email=db@gmail.com; name=Hannah, username=hsmith, email=hsm@test.com;
 */
//MARK: -
let logDump2 = "name=Dan B, username=db, email=db@gmail.com, id=123; name=Hannah, username=hsmith, id=333, email=hsm@test.com; name=Dan Brick, username=db, email=db@gmail.com, id=663;"

let logDump = "name=John Trust, username=john3, email=john3@gmail.com, id=434453; name=Hannah Smith, username=hsmith, email=hsm@test.com, id=23312; name=Hannah Smith, username=hsmith, id=3223423, email=hsm@test.com; name=Robert M, username=rm44, id=222342, email=rm@me.com; name=Robert M, username=rm4411, id=5535, email=rm@me.com; name=Susan Vee, username=sv55, id=443432, email=susanv123@me.com; name=Robert Nick, username=rnick33, id=23432, email=rnick@gmail.com; name=Robert Nick II, username=rnickTemp34, id=23432, email=rnick@gmail.com; name=Susan Vee, username=sv55, id=443432, email=susanv123@me.com;"
//MARK: - old Regex
func getNameOld(_ str: String) -> String {
    let userNameRegex = try! NSRegularExpression(pattern: "\\s?username=([^(,;)]+)")
    
    var matches = userNameRegex.matches(in: str, range: NSRange(location: 0, length: str.count))
    
    if let match = matches.first {
        let r = match.range(at: 1)
        if let swiftR = Range(r, in: str) {
            let name = str[swiftR]
            return String(name)
        }
    }
    
    return ""
}

func LogDumpGetUniqueOld(_ logDump: String) -> String {
    let logArr = logDump.split(separator: ";")
    var duplicates: [String:String] = [:]
    var resStr = ""
    
    for (_,el) in logArr.enumerated() {
        var userName = getNameOld(String(el))
        
        if userName == "" || duplicates[userName] != nil {
            continue
        }
        
        //        let regex = try! NSRegularExpression(pattern: "(,?\\s?id=[^(,|;)]+\\s?)")
        //        let range = NSRange(location: 0, length: el.count)
        //        var result = regex.stringByReplacingMatches(in: String(el), range: range, withTemplate: "")
        //            .replacingOccurrences(of: ",;", with: ";")
        //            .replacingOccurrences(of: ",,", with: ",")
        
        let res = String(el).replacingOccurrences(of: "(,?\\s?id=[^(,|;)]+\\s?)", with: "", options: .regularExpression)
            .replacingOccurrences(of: ",;", with: ";")
            .replacingOccurrences(of: ",,", with: ",")
        
        duplicates[userName] = String(res.trimmingCharacters(in: .whitespaces))
        resStr = resStr + String(duplicates[userName] ?? "") + "; "
    }
    //    return duplicates.values.joined(separator: "; ") + ";"
    return resStr
}
//print(LogDumpGetUniqueOld(logDump))
//==============================
//MARK: - new Regex!!!
func getName(_ str: String) -> String {
    let search = /\s?username=([^(,;)]+)/
    if let result = try? search.firstMatch(in: str) {
        return String(result.1)
    }
    return ""
}

func LogDumpGetUnique(_ logDump: String) -> String {
    let logArr = logDump.split(separator: ";")
    var duplicates: [String:String] = [:]
    
    for (_,el) in logArr.enumerated() {
        var userName = getName(String(el))
        
        if userName == "" || duplicates[userName] != nil {
            continue
        }
        var shortRes = String(el).replacing(/(,?\s?id=[^(,|;)]+\s?)/, with: "")
            .replacing(",;", with: ";")
            .replacing(",,", with: ",")
        
        duplicates[userName] = String(shortRes.trimmingPrefix(" "))
    }
    return duplicates.values.joined(separator: "; ") + ";"
}
//print(LogDumpGetUnique(logDump))

//===============================







//public func solution(_ A : inout [Int]) -> Int {
//    var res = 0
//    A = A.filter { $0 > 0 }.sorted(by: <)
//
//    var x = 1
//
//    for i in 0..<A.count {
//        if x < A[i] {
//            return x
//        }
//        x = A[i] + 1
//    }
//
//    return res
//}
//
//var arrSolution: [Int] = [2,3,-1,4,1,6,7,8,9,0]
//
//solution(&arrSolution)

//==========================

//let inputString = "aabbcd"
//
//func nonRepeat (_ input: String) -> String {
//
//
//    for char in input {
//        if input.firstIndex(of: char) == input.lastIndex(of: char) {
//            return String(char)
//        }
//    }
//    return ""
//}
//print (nonRepeat(inputString))
//
//func changeElements(_ n: Int, _ str: String) -> String {
//    var chars = Array(str)
//    for i in 0..<chars.count {
//        if i%n == 2 {
//            chars[i] = "X"
//        }
//    }
//
//    return String(chars)
//}
////
////changeElements(3, "2z586iZ")
///




//
//func replaceElements(_ n: Int, _ el: Character, _ str: String) -> String {
//  var chars = Array(str)
//  for i in 0..<chars.count {
//    if i%n == 2 {
//      chars[i] == "X"
//    }
//  }
//  return String(chars)
//}
//
//func SearchingChallenge(_ str: String) -> String {
//  // var resChar: Character = " "
//  var resString: String = ""
//  let token: String = "z268i3k1da"
//
//    token.forEach { el in
//        print(el)
//
//    }
//
//  for char in str {
//    if str.firstIndex(of: char) == str.lastIndex(of: char) {
//      // resChar = char
//      resString = "\(char)\(token)"
//      break
//    }
//    resString = token
//  }
//
//   resString = replaceElements(3, "X", resString)
//
////  var chars = Array(resString)
////  for i in 0..<chars.count {
////    if i%3 == 2 {
////      chars[i] = "X"
////    }
////  }
////  return String(chars)
////    resString = changeElements(3, resString)
//
//   return resString
//}
//
//SearchingChallenge("abcd")
//MARK: -
//func SearchingChallenge(_ str: String) -> String {
//  var resString: String = ""
//  var resChar: Character = " "
//  let token: String = "adwk0v25e"
////    let arr = Array(str)
//
//  for char in str {
////      print("\(arr.firstIndex(of: char) ?? 0)==\(arr.lastIndex(of: char) ?? 0)")
//    if str.firstIndex(of: char) == str.lastIndex(of: char) {
//      resChar = char
//      break
//    }
//  }
//
//  resString = "\(resChar):\(String(token.reversed()))"
//
//  return resString
//}
//
//// keep this function call here
//print(SearchingChallenge(readLine(stripNewline: true)));


//func StringChallenge(_ str: String) -> String {
//    var resStr = ""
//    var token = "qybh23vc506f"
//
//    var components = str.split { !$0.isLetter }
//
//    resStr += components[0].lowercased()
//
//    components.dropFirst().forEach { el in
//        resStr += String(el).capitalized
//    }
//
//    var tokenArr = token.split(separator: "")
//
//    tokenArr.forEach { el in
//        resStr = resStr.replacingOccurrences(of: el, with: "--\(el)--")
//    }
//
//    return resStr
//}
//
//StringChallenge("cats a b cdf56d")

// keep this function call here
//print(StringChallenge(readLine(stripNewline: true)));


//func StringChallenge(_ str: String) -> String {
//  var resStr = ""
//  var token = "vogk7mny206"
//  var result = ""
//  var finalRes = ""
//
//  var components = str.split { !$0.isLetter }
//
//  resStr += components[0].lowercased()
//
//  components.dropFirst().forEach { el in
//    resStr += String(el).capitalized
//  }
//
//  result = "\(resStr)\(token)"
//
//  var chars = Array(result)
//  for i in 0..<chars.count {
//    if i%4 == 3 {
//      chars[i] = "_"
//    }
//  }
//
//
//  finalRes = String(chars)
//
//  return finalRes
//}
//
//StringChallenge("cats AND*Dogs-are Awesome")

/*
 In the Swift file, write a program to read in the JSON object which contains a data key and the value is a string which contains items in the format: key=STRING, age=INTEGER. Your goal is to count how many items exist that have an age equal to or greater than 50, and print this final value.

 Example Input
 {"data":"key=IAfpK, age=58, key=WNVdi, age=64, key=jp9zt, age=47"}

 Example Output
 2
 */

let json = """
 {"data":"key=IAfpK, age=58, key=WNVdi, age=64, key=jp9zt, age=47"}
"""


let JSON = """
{"data" : "key=IAfpK, age=58, key=WNVdi, age=64, key=jp9zt, age=47, key=0Sr4C, age=68, key=CGEqo, age=76, key=IxKVQ, age=79, key=eD221, age=29, key=XZbHV, age=32, key=k1SN5, age=88, key=4SCsU, age=65, key=q3kG6, age=33, key=MGQpf, age=13, key=Kj6xW, age=14, key=tg2VM, age=30, key=WSnCU, age=24, key=f1Vvz, age=46, key=dOS7A, age=72, key=tDojg, age=82, key=nZyJA, age=48, key=R8JTk, age=29, key=005Ot, age=66, key=HHROm, age=12, key=5yzG8, age=51, key=xMJ5D, age=38, key=TXtVu, age=82, key=Hz38B, age=84, key=WfObU, age=27, key=mmqYB, age=14, key=4Z3Ay, age=62, key=x3B0i, age=55, key=QCiQB, age=72, key=zGtmR, age=66, key=nlIN9, age=8, key=hKalB, age=50, key=Na33O, age=17, key=jMeXm, age=15, key=OO2Mc, age=32, key=hhowx, age=34, key=gLMJf, age=60, key=PblX6, age=66, key=8Vm5W, age=22, key=oZKd6, age=88, key=RXNfQ, age=25, key=3yy0p, age=64, key=FrQbL, age=80, key=vlUkk, age=55, key=DP8po, age=80, key=EroX6, age=84, key=3bsll, age=86, key=QhZjA, age=85, key=wm6uc, age=74, key=MC1FM, age=75, key=AMxZr, age=64, key=ee03Q, age=4, key=9fGea, age=41, key=3TE9U, age=74, key=FoSMR, age=13, key=4To0X, age=57, key=5CZY3, age=33, key=qFvKG, age=79, key=W7bUh, age=2, key=htab7, age=15, key=KRyu2, age=77, key=GLkk7, age=80, key=jnXf6, age=51, key=YBTJ9, age=43, key=auL0J, age=30, key=ZHmmd, age=4, key=01iNV, age=7, key=7ldyh, age=55, key=TjXbT, age=88, key=ochyW, age=3, key=lsGXW, age=1, key=5o7Bd, age=45, key=APWEf, age=79, key=LRmKc, age=81, key=uZIoQ, age=12, key=Zf79H, age=42, key=NrpEI, age=6, key=XzYKx, age=22, key=kk0sU, age=62, key=p5uue, age=74, key=WscQQ, age=75, key=tRogh, age=19, key=ur4rW, age=60, key=IkCeS, age=19, key=vtGK4, age=11, key=C87cQ, age=38, key=0qXDb, age=39, key=KtBjN, age=46, key=f2h36, age=3, key=tGzgU, age=38, key=hIrPv, age=0, key=Tq7IX, age=25, key=F4k9K, age=46, key=9duxK, age=17, key=jTHDj, age=68, key=6GHpE, age=1, key=ye9us, age=9, key=eOfZO, age=72, key=I25vO, age=88, key=nqtBH, age=38, key=Dwn6b, age=70, key=4Qkdc, age=37, key=xvOa3, age=77, key=dg4rX, age=30, key=S9YbW, age=73, key=WhQqH, age=22, key=fexMF, age=88, key=Gzr0n, age=16, key=yFfjA, age=73, key=EfAKS, age=88, key=5Enyf, age=12, key=DK3HU, age=25, key=iGEBf, age=13, key=7r5UR, age=27, key=TQx1J, age=33, key=VlFwT, age=26, key=gnEgG, age=10, key=6P8gz, age=3, key=JnQLt, age=14, key=D3WJv, age=58, key=EXPMD, age=66, key=RzIDx, age=17, key=m6oYq, age=46, key=XTKAk, age=78, key=ZPLrJ, age=33, key=pDktp, age=10, key=TE9BG, age=18, key=7IS0l, age=35, key=yMY5X, age=58, key=jniwe, age=29, key=eb7lG, age=6, key=uzaoH, age=2, key=pUQoE, age=64, key=JZcuo, age=20, key=XwKBi, age=73, key=Zv4q9, age=31, key=HMD5T, age=76, key=rA4bI, age=75, key=PAMR7, age=86, key=tb8mz, age=2, key=vPcXk, age=18, key=c0Ixk, age=5, key=nkRrD, age=63, key=ISzFh, age=7, key=kcC1y, age=71, key=6J0WQ, age=27, key=FgiVY, age=72, key=Z8M30, age=50, key=Ep2Br, age=48, key=w9MRR, age=1, key=GI7oe, age=49, key=3ehsB, age=67, key=UW3dX, age=87, key=094dk, age=64, key=6tW4g, age=83, key=dT9IK, age=39, key=AofBp, age=27, key=7flGb, age=71, key=IBDqH, age=18, key=K2qn9, age=60, key=Qe7YJ, age=13, key=jqCHl, age=1, key=3R2IN, age=1, key=oVzfV, age=22, key=3yGCN, age=47, key=DOMm4, age=89, key=7EFRj, age=33, key=t1qsV, age=39, key=CBal1, age=14, key=BC0vr, age=68, key=0yY6L, age=47, key=Z8kX8, age=62, key=5oH1d, age=66, key=w0r3A, age=6, key=Bu8uK, age=55, key=vyqhK, age=35, key=7Zgz6, age=58, key=T573t, age=18, key=Rr4WR, age=48, key=kxnBU, age=39, key=XI3Jo, age=45, key=IAE95, age=43, key=rfSBT, age=59, key=znDPW, age=57, key=mBDDN, age=4, key=2hL0t, age=35, key=MbHM6, age=33, key=bS5oR, age=88, key=Rav2A, age=24, key=aLQO7, age=74, key=QCTUi, age=81, key=0HZlb, age=39, key=zshkO, age=5, key=q5EUd, age=75, key=WwgjN, age=20, key=LzTMa, age=3, key=uumoL, age=32, key=m3LJI, age=80, key=rU10P, age=39, key=gVTQz, age=79, key=wZjna, age=47, key=3d1E0, age=77, key=Ra74M, age=89, key=FJXHG, age=11, key=MckmR, age=37, key=tSqfN, age=2, key=HHkpI, age=40, key=S7rIA, age=34, key=vnpjJ, age=2, key=t8WSa, age=84, key=38fyp, age=11, key=Znot2, age=72, key=OGqoG, age=65, key=7VKiL, age=58, key=UdlEG, age=79, key=BXxIS, age=47, key=eW6F8, age=10, key=GASTN, age=86, key=SP0yy, age=53, key=ysN9w, age=17, key=KVGGz, age=76, key=yhEVk, age=47, key=vvlgV, age=67, key=aIMuS, age=21, key=KcHZk, age=41, key=6n8pa, age=35, key=ADTut, age=3, key=WNJXO, age=37, key=qta1A, age=67, key=cJOTp, age=67, key=1Bgd3, age=71, key=sHepZ, age=67, key=JoMvH, age=65, key=h1gF0, age=53, key=we7hP, age=41, key=Ztl8x, age=8, key=7pkQj, age=43, key=fkBah, age=21, key=FWETS, age=55, key=Gb4IY, age=26, key=U88H6, age=57, key=iExWE, age=8, key=7sl6v, age=8, key=iwI1x, age=9, key=cdKUG, age=60, key=xb127, age=57, key=dqYi8, age=15, key=opO2h, age=80, key=RNux0, age=37, key=cooLT, age=7, key=qhzQn, age=18, key=uowal, age=10, key=YR8Oy, age=17, key=GwEwr, age=15, key=WIXKE, age=53, key=aeem8, age=88, key=UPYoP, age=85, key=IF1pO, age=11, key=R6pUy, age=37, key=vYADh, age=0, key=TIq4k, age=35, key=dCekr, age=56, key=HBbXO, age=84, key=Lo9h5, age=36, key=fqBW3, age=87, key=OQWCL, age=52, key=nlYrf, age=6, key=cUS5f, age=32, key=A5gR0, age=32, key=HpUXl, age=84, key=nOuUT, age=18, key=mfvjr, age=12, key=24FH4, age=13, key=2rQei, age=51, key=EGAAV, age=8, key=Q5ifr, age=50, key=AVpil, age=87, key=vRcjt, age=51, key=G53C3, age=53, key=bsZAz, age=66, key=a8rVi, age=28, key=qPs5m, age=48, key=hF1kt, age=78, key=GIDFA, age=32, key=d2Mg4, age=12, key=EoYwt, age=30, key=DL7zx, age=14, key=lsA6c, age=17, key=ExutD, age=82, key=YOSNP, age=53, key=PEfma, age=49, key=EA8Go, age=18, key=fGTSM, age=60, key=lRf1j, age=13, key=0iJGV, age=50, key=cFCfU, age=5, key=J8an1, age=48, key=dkSlj, age=5"}
"""

struct DataObject: Decodable {
    let data: String
}
//MARK: - old Regex
func countItems(_ str: String) -> Int {
    var result: Int = 0
        let token = "5b3hkro2d4"
    let jsonData = str.data(using: .utf8)!
    let dataObject: DataObject = try! JSONDecoder().decode(DataObject.self, from: jsonData)
    
    let ageRegex = try! NSRegularExpression(pattern: "age=([5-9]+[\\d]+|[1-9]+[\\d]{2,20})")
    let ageRange = NSRange(location: 0, length: dataObject.data.count)
    
    var matches = ageRegex.matches(in: dataObject.data, range: ageRange)
    
    var test = dataObject.data.ranges(of: /age=([5-9]+[\\d]+|[1-9]+[\\d]{2,20})/)
    print(test)
    
    result = matches.count

       token.forEach { el in
           result = Int(String(result).replacingOccurrences(of: String(el), with: "--\(el)--" )) ?? matches.count
       }
    
    return matches.count
}

//print(countItems(JSON))
//print(countItems(json))

//MARK: - new Regex!!!
func countItemsNew(_ str: String) -> Int {
    let jsonData = str.data(using: .utf8)!
    let dataObject: DataObject = try! JSONDecoder().decode(DataObject.self, from: jsonData)
    
    let search = /age=([5-9]+[\d]+|[1-9]+[\d]{2,20})/
    let matches = dataObject.data.matches(of: search)
    
    return matches.count
}

print(countItemsNew(JSON))



