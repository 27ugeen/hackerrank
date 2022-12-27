import UIKit
import CoreGraphics

var greeting = "Hello, playground"

//MARK: -
//func compareTriplets(a: [Int], b: [Int]) -> [Int] {
//    var alice = 0
//    var bob = 0
//
//    for (idx, _) in a.enumerated() {
//        if a[idx] > b[idx] {
//            alice += 1
//        } else if a[idx] < b[idx] {
//            bob += 1
//        }
//    }
//
//    return [alice, bob]
//}
//
//compareTriplets(a: [1,3,4], b: [5,3,7])


//MARK: -
//func diagonalDifference(arr: [[Int]]) -> Int {
//    var leftToRightDiagonal: Int = 0
//    var rightToLeftDiagonal: Int = 0
//    var diff: Int = 0
//    let arrCount = arr.count
//
//    for i in 0..<arr.count {
//        leftToRightDiagonal += arr[i][i]
//        rightToLeftDiagonal += arr[i][arrCount - 1 - i]
//    }
//
//
//    diff = leftToRightDiagonal - rightToLeftDiagonal
//
//     if diff < 0 {
//         diff = -diff
//     }
//    return diff
//}
//
//diagonalDifference(arr: [[3,4,5,4],
//                         [1,2,3,3],
//                         [1,2,3,4],
//                         [5,6,7,5]])
//MARK: -
//func plusMinus(arr: [Int]) -> Void {
//    var pEl: Int = 0
//    var nEl: Int = 0
//    var zEl: Int = 0
//    let arrCount: Int = arr.count
//    for a in arr {
//        if a > 0 {
//            pEl += 1
//        }
//        if a < 0 {
//            nEl += 1
//        }
//        if a == 0 {
//            zEl += 1
//        }
//    }
//
//    print(NSString(format: "%.10f", pEl/arrCount))
//    print(Double(nEl/arr.count))
//    print(Double(nEl/arr.count))
//}
//plusMinus(arr: [3,4,-5,0,6,-14,0,6])
//MARK: -
//func miniMaxSum(arr: [Int]) -> Void {
//    let nMin = arr.min()
//    let nMax = arr.max()
//    var minArr: [Int] = arr
//    var maxArr: [Int] = arr
//
//    if nMin == nMax {
//        minArr.remove(at: 0)
//        maxArr.remove(at: 0)
//    } else {
//        minArr = arr.filter { $0 != nMax }
//        maxArr = arr.filter { $0 != nMin }
//    }
//
//    var sumMin: Int64 = 0
//    var sumMax: Int64 = 0
//
//    for min in minArr {
//        sumMin += Int64(min)
//    }
//    for max in maxArr {
//        sumMax += Int64(max)
//    }
//
//    print(sumMin, sumMax)
//}
//
//miniMaxSum(arr: [5,5,5,5,5])
//MARK: -
//func birthdayCakeCandles(candles: [Int]) -> Int {
//    let tallest = candles.max()
//    let lowest = candles.min()
//    var tallestCandles: [Int]
//
//    if tallest == lowest {
//        tallestCandles = candles
//    } else {
//        tallestCandles = candles.filter { $0 == tallest }
//        print(tallestCandles)
//    }
//
//    return tallestCandles.count
//}
//
//birthdayCakeCandles(candles: [0,3,3,3])
//MARK: -
//func timeConversion(s: String) -> String {
//    var start = "\(s.dropLast(8))"
//    let mid = "\(s.dropFirst(2).dropLast(2))"
//    let end = "\(s.dropFirst(8))"
//
//    if end == "PM" && start != "12" {
//        start = "\((Int(start) ?? 0) + 12)"
//    }
//
//    if end == "AM" && start == "12" {
//        start = "00"
//    }
//    return start + mid
//}
//
//timeConversion(s: "07:05:45PM")
//MARK: -
//func gradingStudents(grades: [Int]) -> [Int] {
//    var res: [Int] = []
//    for g in grades {
//        let nextMultFive = 5 - (g%5) + g
//        if g < 38 || (nextMultFive - g) >= 3 {
//            res.append(g)
//        } else {
//            res.append(nextMultFive)
//        }
//    }
//return res
//}
//
//gradingStudents(grades: [73,67,38,33])
//MARK: -
//func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
//    var applesCount = 0
//    var orangesCount = 0
//
//    apples.forEach { el in
//        let destination = el + a
//        if destination >= s && destination <= t {
//            applesCount += 1
//        }
//    }
//
//    oranges.forEach { el in
//        let destination = el + b
//        if destination >= s && destination <= t {
//            orangesCount += 1
//        }
//    }
//
//    print(applesCount)
//    print(orangesCount)
//}
//MARK: -
//func kangaroo1(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
//    var res: String = "NO"
//
//    if((v2 >= v1) && (x2 > x1)) || ((v1 >= v2) && (x1 > x2)) {
//        return res
//    }
//
//    var idx: Int = 0
//
//    var pos1 = x1
//    var pos2 = x2
//
//    if x1 > x2 {
//        pos1 = x2
//        pos2 = x1
//    }
//
//    while(true) {
//        idx += 1
//
//        var kang1 = pos1 + (v1 * idx)
//        var kang2 = pos2 + (v2 * idx)
//
//        if kang1 == kang2 {
//            res = "YES"
//            break
//        }
//
//        if kang1 > kang2 {
//            break
//        }
//    }
//
//    return res
//}

//func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
//    if (x2 > x1 && v2 > v1) || (x1 > x2 && v1 > v2) || (v1 == v2 && x1 != x2) {
//        return "NO"
//    } else if (x2 - x1) % (v1 - v2) == 0 || (x2 - x1) % (v2 - v1) == 0 {
//        return "YES"
//    } else {
//        return "NO"
//    }
//}
//
//kangaroo(x1: 21, v1: 6, x2: 47, v2: 3)
//MARK: -
//func getTotalX1(a: [Int], b: [Int]) -> Int {
//    var result: Int = 0
//    let maxNumA: Int = a.max() ?? 0
//    let minNumB: Int = b.min() ?? 0
////    let arrHundred = Array(1...100)
//    if maxNumA > minNumB {
//        return 0
//    }
//    let arrResultH: [Int] = Array(maxNumA...minNumB)
//    var arrResultA: [Int] = []
//    var arrResultB: [Int] = []
//
//    //1===
////    for i in arrHundred {
////        if i >= maxNumA && i <= minNumB {
////            arrResultH.append(i)
////        }
////    }
//    print(arrResultH)
//
//    //2===
////    if arrHundred.isEmpty {
////        return 0
////    }
//
//    //3===
//    for i in arrResultH {
//        if i%maxNumA == 0 {
//            arrResultA.append(i)
//        }
//    }
//    print(arrResultA)
//
//    //=========
//    var arrA: [Int] = arrResultA
//    for i in a {
//        for j in arrResultA {
////            print("\(j)%\(i): \(j%i) == \(j%i == 0)")
//            if j%i != 0 {
//                arrA = arrA.filter {$0 != j}
////                print(arrA)
//            }
//        }
//    }
//
//    print(arrA)
//
//    //4===
//    for i in arrA {
//        if minNumB%i == 0 {
//            arrResultB.append(i)
//        }
//    }
//    print(arrResultB)
//
//    //5===
//    var arrResultGen: [Int] = arrResultB
//    for i in b {
//        for j in arrResultB {
//            if i%j != 0 {
//                arrResultGen = arrResultGen.filter { $0 != j }
//            }
//        }
//    }
//
//
//    print(arrResultGen)
//
//    result = arrResultGen.count
//
//    return result
//}

//func getTotalX(a: [Int], b: [Int]) -> Int {
//    var total = 0
//    for x in 1...100 {
//        var status = true
//        for i in 0..<b.count {
//            if (b[i] % x != 0) {
//                status = false
//                break
//            }
//        }
//        if (status) {
//            for i in 0..<a.count {
//                if (x % a[i] != 0) {
//                    status = false
//                    break
//                }
//            }
//        }
//        if (status) {
//            total += 1
//        }
//    }
//    return total
//}

//getTotalX(a: [100,99,98,97,96,95,94,93,92,91], b: [1,2,3,4,5,6,7,8,9,10])
//getTotalX(a: [2], b: [20, 30, 12])
//getTotalX(a: [2,4], b: [16,32,96])
//getTotalX1(a: [3,4], b: [24,48])
//getTotalX1(a: [2,6], b: [24,36])
//MARK: -
//func breakingRecords(scores: [Int]) -> [Int] {
//    var highestScore = scores.first ?? 0
//    var lowestScore = scores.first ?? 0
//    var bestRec = 0
//    var worstRec = 0
//
//    scores.forEach { el in
//        if el > highestScore {
//            bestRec += 1
//            highestScore = el
//        }
//        if el < lowestScore {
//            worstRec += 1
//            lowestScore = el
//        }
//    }
//
//    return [bestRec, worstRec]
//}
//func breakingRecords(scores: [Int]) -> [Int] {
//    var bestRec: Int = 0
//    var worstRec: Int = 0
//    var result: [Int] = []
//
//    var lowestScore: Int = 0
//    var highestScore: Int = 0
//
//    let firstEl = scores[0]
//
//    var startIdx: Int = 0
//    //1===
//    for i in 0..<scores.count {
//        if scores[i] != firstEl {
//            startIdx = i
//            break
//        }
//    }
////    print(startIdx)
//    if startIdx == 0 {
//        return [0,0]
//    }
//    //2===
//    var fArr = scores
//    fArr.removeFirst(startIdx - 1)
//    print(fArr)
//
//    if fArr[0] < fArr[1] {
//        bestRec += 1
//        lowestScore = fArr[0]
//        highestScore = fArr[1]
//    } else {
//        worstRec += 1
//        lowestScore = fArr[1]
//        highestScore = fArr[0]
//    }
////    print("lowestScore: \(lowestScore), highestScore: \(highestScore)")
//
//    //3===
//    for i in 0..<fArr.count {
//        if fArr[i] < lowestScore {
//            worstRec += 1
//            lowestScore = fArr[i]
////            print("lowScore: \(lowestScore), worstRec: \(worstRec)")
//        }
//
//        if fArr[i] > highestScore {
//            bestRec += 1
//            highestScore = fArr[i]
////            print("hiScore: \(highestScore), bestRec: \(bestRec)")
//        }
//    }
//
//    result = [bestRec, worstRec]
//    return result
//}
//
//breakingRecords(scores: [10,5,20,20,4,5,2,25,1])
//breakingRecords(scores: [3,4,21,36,10,28,35,5,24,42])
//breakingRecords(scores: [2,3,2,5,1,0,1,2])
//MARK: -
//func birthday(s: [Int], d: Int, m: Int) -> Int {
//    var tempArr: [Int] = []
//    var sum = 0
//    var res = 0
//
//    s.forEach { el in
//        tempArr.append(el)
//        if tempArr.count == m {
//            sum = tempArr.reduce(0, +)
//            tempArr.removeFirst()
//        }
//        if sum == d {
//            res += 1
//        }
//    }
//
//    return res
//}

//birthday(s: [4], d: 4, m: 1)
//birthday(s: [1,2,1,3,2], d: 3, m: 2)
//birthday(s: [2,2,2,2], d: 6, m: 3)

//MARK: -
//func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
//    var result = 0
//    var uArr = ar
//    uArr.remove(at: 0)
//
//    for i in 0..<ar.count {
//        if uArr.count > 0 {
//            for j in 0..<uArr.count {
//                print("\(ar[i])+\(uArr[j]) = \(ar[i] + uArr[j])")
//                if (ar[i] + uArr[j])%k == 0 {
//                    result += 1
//                }
//            }
//            uArr.remove(at: 0)
//        }
//    }
//
//    return result
//}

//divisibleSumPairs(n: 6, k: 3, ar: [1, 3, 2, 6, 1, 2])
//MARK: -
//func migratoryBirds(arr: [Int]) -> Int {
//    var result = 0
//    let types = [1,2,3,4,5]
//
//    var typesResult: [Int] = [0,0,0,0,0]
//
//    //1
//    for i in 0..<arr.count {
//        for j in 0..<types.count {
//            if arr[i] == types[j] {
//                typesResult[j] += 1
//            }
//        }
//    }
//    print(typesResult)
//    //2
//    let maxNumType = typesResult.max()!
//    print("maxNumType: \(maxNumType)")
//
//    //3
//    var typeIdx = 0
//    for i in 0..<typesResult.count {
//        if typesResult[i] == maxNumType {
//            typeIdx = i
//            break
//        }
//
//    }
////    print(typeIdx)
//    //4
//    result = typeIdx + 1
//
//    print("resultType: \(result)")
//
//    return result
//}
//
//migratoryBirds(arr: [1,2,3,3,3,3,4,4,4,4,5,4,3,2,1,3,4])
//migratoryBirds(arr: [1,4,4,4,5,3])
//MARK: -
//func dayOfProgrammer(year: Int) -> String {
//    var day: Int = 0
//
//    //1
//    if year == 1918 {
//        return "26.09.\(year)"
//    }
//    //2
//    if year > 1918 && year%400 == 0 {
//        return "12.09.\(year)"
//    }
//    //3
//    if year < 1918 && year%4 == 0 || year > 1918 && year%4 == 0 && year%100 != 0 {
//        day = 12
//    } else {
//        day = 13
//    }
//
//    return "\(day).09.\(year)"
//}
//
//dayOfProgrammer(year: 1980)
//dayOfProgrammer(year: 2000)
//MARK: -

//func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
//    var currentBill = bill
//    currentBill.remove(at: k)
////    print(currentBill)
//    let billPerPerson = currentBill.reduce(0, +) / 2
//
//    if billPerPerson == b {
//        print("Bon Appetit")
//    } else {
//        let diff = b - billPerPerson
//        print(diff)
//    }
//}
//
//bonAppetit(bill: [3,10,2,9], k: 1, b: 7)
//MARK: -
//func sockMerchant(n: Int, ar: [Int]) -> Int {
//    var pairs = 0
//    var sorted = ar.sorted()
//    print("sorted: \(sorted)")
//    var counter = n
//
//    repeat {
//        var filtered = sorted.filter { $0 == sorted[0]}
//
//        if filtered.count.isMultiple(of: 2) {
//            pairs += filtered.count / 2
//        } else {
//            if filtered.count != 1 {
//                filtered.remove(at: 0)
//                pairs += filtered.count / 2
//            }
//        }
//        sorted.removeFirst(filtered.count)
//
//        if filtered.isEmpty {
//            counter = 0
//        } else {
//            counter -= 1
//        }
////        print("counter: \(counter)")
////        print("filtered: \(filtered)")
////        print("sorted: \(sorted)")
//
//    } while counter > 0
//
//    return pairs
//}

//sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20])
//sockMerchant(n: 10, ar: [1,1,3,1,2,1,3,3,3,3])
//sockMerchant(n: 10, ar: [1,2,3,4,5,6,7,8,9,10])
//sockMerchant(n: 100, ar: [44,55,11,15,4,72,26,91,80,14,43,78,70,75,36,83,78,91,17,17,54,65,60,21,58,98,87,45,75,97,81,18,51,43,84,54,66,10,44,45,23,38,22,44,65,9,78,42,100,94,58,5,11,69,26,20,19,64,64,93,60,96,10,10,39,94,15,4,3,10,1,77,48,74,20,12,83,97,5,82,43,15,86,5,35,63,24,53,27,87,45,38,34,7,48,24,100,14,80,54])
//MARK: -
//func pageCount(n: Int, p: Int) -> Int {
//    var count = 0
//    var midPage = 0
//    //1
//    if p == 1 || p == n {
//        return 0
//    }
//    //2
//    if p == n - 1 {
//        if n%2 == 0 {
//            return 1
//        } else {
//            return 0
//        }
//    }
//    //3
//    midPage = n/2
////    print("mid: \(midPage)")
//    //4
//    if p <= midPage {
//        count = p/2
//    }
//    if p > midPage {
//        if p%2 == 0 {
//            count = (n - p) / 2
//        } else {
//            if n%2 != 0 {
//                count = (n - p) / 2
//            } else {
//                count = (n - p) / 2 + 1
//            }
//        }
//    }
//
//    return count
//}

//pageCount(n: 59867, p: 35733)
//MARK: -
//func countingValleys(steps: Int, path: String) -> Int {
//    var res = 0
//
//    var height = 0
//    var stepsArr: [Int] = []
//
//    for i in path {
//        if i == "U" {
//            height += 1
//        }
//        if i == "D" {
//            height -= 1
//        }
//        stepsArr.append(height)
//        print("Height: \(height)")
//    }
//    print("steps: \(stepsArr)")
//    //1
//    if !stepsArr.contains(where: {$0 < 0} ) {
//        return 0
//    }
//    //2
//    for i in 0..<stepsArr.count - 1 {
//        if stepsArr[i] == -1 && stepsArr[i+1] == 0 {
//            res += 1
//        }
//    }
//
//    return res
//}

//countingValleys(steps: 24, path: "DUUDDDDDUUUUUDDUUDDDUUUDDU")
//MARK: -
//func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
//    var res = 0
//    var sum: [Int] = []
//    var total: Int = 0
//    let kMin = keyboards.min()!
//    let dMin = drives.min()!
//
//    //1
//    if b < kMin || b < dMin {
//        return -1
//    }
//
//    for i in 0..<drives.count {
//        for j in 0..<keyboards.count {
//            total = drives[i] + keyboards[j]
//            sum.append(total)
//        }
//    }
////    print("sum: \(sum)")
//    var tempArr: [Int] = []
//    for i in sum {
//        if i <= b {
//            tempArr.append(i)
//        }
//    }
//    print("tempArr: \(tempArr)")
//
//    res = tempArr.max() ?? -1
//
//    return res
//}
//
//getMoneySpent(keyboards: [3,1], drives: [5,2,8,11], b: 9)
//MARK: -
//func catAndMouse(x: Int, y: Int, z: Int) -> String {
//    let catA = "Cat A"
//    let catB = "Cat B"
//    let mouse = "Mouse C"
//    var res = ""
//
//    //1
//    if z == x && x != y {
//        return catA
//    }
//    //2
//    if z == y && x != y {
//        return catB
//    }
//    //3
//    var lA = z - x
//    if lA < 0 {
//        lA = -lA
//    }
//    var lB = z - y
//    if lB < 0 {
//        lB = -lB
//    }
//    if lA == lB {
//        return mouse
//    }
//    //4
//    if lA < lB {
//        res = catA
//    } else {
//        res = catB
//    }
//
//    return res
//}
//
//catAndMouse(x: 4, y: 2, z: 3)
//MARK: -

//func pickingNumbers(a: [Int]) -> Int {
//    var res = 0
//    var remCount = 0
//    var s = a.sorted()
//    s.append(0)
//    print("sorted: \(s)")
//
//    var tempArr: [Int] = []
//    for i in 0..<s.count - 1 {
//            tempArr.append(s[i])
//        print("temp11: \(tempArr)")
//        print("0: \(s[0]), i: \(s[i])")
//            if s[i] - s[remCount] > 1 {
//                tempArr.remove(at: 0)
//                remCount += 1
//            }
//        print("tempAr: \(tempArr)")
//
//        if s[i+1] - s[0] > 1 && tempArr.count >= (s.count - 1)/2 {
//            return tempArr.count
//        }
//    }
//    res = tempArr.count
//
//    return res
//}

//pickingNumbers(a: [1,2,2,3,1,2])
//pickingNumbers(a: [4,6,5,3,3,1])
//pickingNumbers(a: [98,3,99,1,97,2])
//pickingNumbers(a: [1,2,3,4,4,4,5,5,5,6,6,6,8,8])
//MARK: -

//func climbingLeaderboard(ranked: [Int], player: [Int]) -> [Int] {
//    var res: [Int] = []
//    var rankedPlace: [Int] = []
//    var place = 1
//
//    for i in 0..<ranked.count {
//        if i > 0 && ranked[i] < ranked[i-1] {
//            place += 1
//            rankedPlace.append(place)
//        } else {
//            rankedPlace.append(place)
//        }
//    }
//    let rankedPs = rankedPlace.sorted(by: >)
//    print("rankedPlace: \(rankedPlace)")
//
//
//    let rankedS = ranked.sorted()
//
//    var tempAr: [Int] = []
//
////    for i in 0..<player.count {
//    player.map { player in
//        for j in 0..<rankedS.count {
//            if player == rankedS[j] {
//                tempAr.append(rankedPs[j])
////                print(tempAr)
//                break
//            }
//            if player < rankedS[j] {
//                tempAr.append(rankedPs[j] + 1)
////                print(tempAr)
//                break
//            }
//            if player > rankedS.last! {
//                tempAr.removeAll()
//                tempAr.append(1)
////                print(tempAr)
//                break
//            }
//            tempAr.removeAll()
//        }
//        res.append(tempAr[0])
//    }
//
////    print(tempAr)
//    print(res)
//    return res
//}

//func climbingLeaderboard(ranked: [Int], player: [Int]) -> [Int] {
//    var res: [Int] = []
//    let uniq = Array(Set(ranked))
//    let sorted = uniq.sorted(by: >)
////    print(sorted)
//
//    for i in 0..<player.count {
//        if player[i] >= sorted[0] {
//            res.append(contentsOf: repeatElement(1, count: player.count - i))
//            break
//        }
//
//        if sorted.contains(player[i]) {
//            res.append(sorted.firstIndex(of: player[i])! + 1)
//            continue
//        }
//
//        var newR = sorted
//        newR.append(player[i])
//        let newRS = newR.sorted(by: >)
////        print(newRS)
//
//        res.append(newRS.firstIndex(of: player[i])! + 1)
//    }
//    print(res)
//    return res
//}

//func climbingLeaderboard(ranked: [Int], player: [Int]) -> [Int] {
//    var uniq = Array(Set(ranked)).sorted(by: >)
////    print(uniq)
//
//    var res: [Int] = []
//    player.forEach { i in
//        while (!uniq.isEmpty && i >= uniq[uniq.count - 1]) {
//            uniq.removeLast()
//            print("uniq: \(uniq)")
//        }
//        res.append(uniq.count + 1)
//        print("res: \(res)")
//    }
//    return res
//}
//
//climbingLeaderboard(ranked: [100,90,90,80,75,60], player: [50,65,77,90,102])
//climbingLeaderboard(ranked: [100,100,50,40,40,20,10], player: [5,25,50,120])
//climbingLeaderboard(ranked: [100,90,90,80,75,60], player: [55])

//func binarySearch(in numbers: [Int], for value: Int) -> Int {
//    let numSet = Array(Set(numbers))
////    print("numSet: \(numSet)")
//    let sorted = numSet.sorted()
////    print("sorted: \(sorted)")
//    var left = 0
//    var right = sorted.count - 1
//    var place = 0
//    let minV = sorted.min()!
//    let maxV = sorted.max()!
//
//    if value < minV {
//        place = sorted.count + 1
////        print("\(value): \(place)")
//        return place
//    }
//    if value == minV {
//        place = sorted.count
////        print("\(value): \(place)")
//        return place
//    }
//    if value >= maxV {
//        place = 1
////        print("\(value): \(place)")
//        return place
//    }
//
//    while left <= right {
//        let middle = Int(floor(Double(left + right) / 2.0))
//
//        if sorted[middle] < value {
//            left = middle + 1
//        } else if sorted[middle] > value {
//            right = middle - 1
//        } else {
//            place = sorted.count - middle
////            print("\(value): \(place)")
//            return place
//        }
//    }
////    print("l: \(left), r: \(right)")
//    place = sorted.count + 1 - left
////    print("\(value): \(place)")
//    return place
//}

//binarySearch(in: [100,90,90 ,80,75,60,50], for: 59)


//class SomeClass1 {
//  let value: UInt32 = arc4random_uniform(100)
//}
//class SomeClass2 {
//  let value: UInt32
//  init(value: UInt32) {
//    self.value = value
//  }
//}
//var someClass1s = [SomeClass1]()
//for _ in 0..<1000 {
//  someClass1s.append(SomeClass1())
//}
//
//var someClass2s = [SomeClass2]()
//let startTimeInterval1 = CFAbsoluteTimeGetCurrent()
//someClass1s.map { someClass2s.append(SomeClass2(value: $0.value)) }
//print("Time1: \(CFAbsoluteTimeGetCurrent() - startTimeInterval1)") // "Time1: 0.489435970783234"
//var someMoreClass2s = [SomeClass2]()
//let startTimeInterval2 = CFAbsoluteTimeGetCurrent()
//for item in someClass1s { someMoreClass2s.append(SomeClass2(value: item.value)) }
//print("Time2: \(CFAbsoluteTimeGetCurrent() - startTimeInterval2)")

//MARK: -
//func designerPdfViewer(h: [Int], word: String) -> Int {
//    var res: Int = 0
//    let wordArr = Array(word)
//    // 1.
//    let unicodeScalarRange: ClosedRange<Unicode.Scalar> = "a" ... "z"
//    // 2.
//    let unicodeScalarValueRange: ClosedRange<UInt32> = unicodeScalarRange.lowerBound.value ... unicodeScalarRange.upperBound.value
//    // 3.
//    let unicodeScalarArray: [Unicode.Scalar] = unicodeScalarValueRange.compactMap(Unicode.Scalar.init)
//    // 4.
//    let characterArray: [Character] = unicodeScalarArray.map(Character.init)
//    print(characterArray)
//
//    var tempArr: [Int] = []
//    for i in 0..<wordArr.count {
//        for j in 0..<characterArray.count {
//            if wordArr[i] == characterArray[j] {
//                tempArr.append(j)
//                continue
//            }
//        }
//    }
//    print(tempArr)
//
//    var resArr: [Int] = []
//    for i in tempArr {
//        resArr.append(h[i])
//    }
//    print(resArr)
//
//    res = resArr.max()! * resArr.count
//    print(res)
//    return res
//}

//designerPdfViewer(h: [1,3,1,3,1,4,1,3,2,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,7], word: "zaba")
//MARK: -
//func utopianTree(n: Int) -> Int {
//    let startH = 1
//    var count = n
//
//    if n == 0 {
//        return startH
//    }
//
//    if n == 1 {
//        return 2
//    }
//
//    var height: Int = startH + 2
//    count -= 2
//    print(count%2 == 0)
//    while(count != 0) {
//        if n%2 != 0 {
//            if count%2 != 0 {
//                height += height
//                count -= 1
//            } else if count%2 == 0 {
//                height += 1
//                count -= 1
//            }
//        } else {
//            if count%2 == 0 {
//                height += height
//                count -= 1
//            } else if count%2 != 0 {
//                height += 1
//                count -= 1
//            }
//        }
//    }
//
//return height
//}

//utopianTree(n: 3)
//MARK: -
//func beautifulDays(i: Int, j: Int, k: Int) -> Int {
//    var res = 0
//    let rangeArr: [Int] = Array(i...j)
//
//    for num in rangeArr {
//        var x = num
//        var reversedX = 0
//
//        while x != 0 {
//            reversedX = reversedX * 10 + x%10
//            x /= 10
//        }
////        print("reversedX: \(reversedX)")
//        if (num - reversedX)%k == 0 {
//            res += 1
//        }
//
//    }
//    return res
//}

//beautifulDays(i: 20, j: 23, k: 6)

//func reverse(_ x: Int) -> Int {
//    var x = x
//    var reversedX = 0
//    while x != 0 {
//        reversedX = reversedX * 10 + x % 10
//        x /= 10
//        if (reversedX < 0 && x != 0 && Int(Int32.min) / 10 > reversedX ) { return 0 }
//        if (reversedX > 0 && x != 0 && Int(Int32.max) / 10 < reversedX ) { return 0 }
//    }
//    return reversedX
//}

//reverse(210)
//MARK: -
//func viralAdvertising(n: Int) -> Int {
//    guard n > 0 else { return 0 }
//    let startP = 5
//    var liked: [Int] = []
//
//    var res = startP/2
//    liked.append(res)
//
//    if n == 1 {
//        return res
//    }
//
//    while liked.count != n {
//
//        for _ in 1..<n {
//            res = (res * 3) / 2
//            liked.append(res)
//        }
//    }
//    print(liked)
//
//    res = liked.reduce(0, +)
//
//    print("res: \(res)")
//
//    return res
//}

//viralAdvertising(n: 0)
//MARK: -
//func staircase(n: Int) -> Void {
//    var space = " "
//    var str = ""
//    for i in 0..<n {
//        space = String(repeating: " ", count: n - i - 1)
//        str += "#"
//        print(space + str)
//    }
//}

//staircase(n: 100)
//MARK: -
//func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
//    var res: Int = 0
//    let prisoners = n
//    var sweets = m
//
//    if m < n {
//        for i in s - 1..<prisoners {
//            if sweets <= 0{
//                break
//            }
//            res = i + 1
//            sweets -= 1
//        }
//        return res
//    }
//    sweets = m - (n - s) - 1
//    print("s1: \(sweets)")
//    // 6 = 19 - (19/7)*7 + 1
////    sweets = m - (m / n * n) - (n - s) - 1
//    sweets = m - (m / n * n) - sweets
//
//
//    if sweets < 0 {
//        sweets = -sweets
//    }
//
//
//    print("s2: \(sweets)")
//
//    while sweets > 0 {
//        for i in 0..<prisoners {
//            if sweets <= 0{
//                break
//            }
//            res = i + 1
//            sweets -= 1
//            print("res: \(res)")
//        }
//    }
////    print(res)
//
//    return res
//}

//func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
////    let res = (s + m - 1)%n
////    let count = String(res).count
////    let repeatedStr = "1" + String(repeating: "0", count: count)
////    let countZero = Double(repeatedStr)!
////    let double: Double = Double(res)/countZero
////    let num: Double = (Double(s + m - 1) - Double(res)) / Double(n)
////    let full: Double = double + num
////    print(full)
//
//    let res = (s + m - 1)%n
//    if res == 0 { return n }
//    return res
//}
//
//saveThePrisoner(n: 4, m: 4, s: 1) // 4 // 0
//saveThePrisoner(n: 4, m: 4, s: 2) // 1 // s - 1
//saveThePrisoner(n: 4, m: 4, s: 3) // 2 // s - 1
//saveThePrisoner(n: 4, m: 4, s: 4) // 3 // s - 1


//func someAsynchronousCall(completition: @escaping (Int) -> Void) {
//    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//        completition(7)
//    }
//}
//
//var answer: Int?
//
//someAsynchronousCall() { result in
//    answer = result
//    print(answer as Any)
//}
//print(answer as Any)

//let country = (Locale.current as NSLocale).displayName(forKey: .countryCode, value: $0)

//struct CountryCode {
//    let country: String?
//    let code: String
//}
//
//let countries: [CountryCode] = NSLocale.isoCountryCodes.map {
//    let country = (Locale.current as NSLocale).displayName(forKey: .countryCode, value: $0)
//    return CountryCode(country: country, code: $0)
//}
//
//countries.map { print($0) }

//func toCountry(_ code: String) -> String {
//    let country = (Locale.current as NSLocale).displayName(forKey: .countryCode, value: code)
//
//    return country ?? ""
//}
//
//toCountry("UA")

//struct Vector3D: Equatable {
//    let x: Double
//    let y: Double
//    let z: Double
//}
//
//let twoThreeFour = Vector3D(x: 2.0, y: 3.0, z: 4.0)
//let anotherTwoThreeFour = Vector3D(x: 2.0, y: 3.0, z: 4.0)
//if twoThreeFour == anotherTwoThreeFour {
//    print("Эти два вектора эквивалентны.")
//}
//
//
//final class User: Equatable {
//    static func == (lhs: User, rhs: User) -> Bool {
//        return lhs.id == rhs.id && lhs.email == rhs.email && lhs.password == rhs.password
//    }
//
//    let id: String
//    let email: String
//    let password: String
//
//    init(id: String = UUID().uuidString, email: String, password: String) {
//        self.id = id
//        self.email = email
//        self.password = password
//    }
//}
//
//let u1 = User(id: "1", email: "1", password: "1")
//let u2 = User(id: "1", email: "1", password: "1")
//
//print("isEquatable: \(u1 == u2)")


//class Person {
//    static var name: String?
//    static var lastName: String?
//
//    static func fullName() -> String {
//        return "\(name ?? ""), \(lastName ?? "")"
//    }
//}
//
//let user = Person()
//
//Person.fullName()

//struct Person: Equatable {
//    var name = "Name"
//    var age = 18
//}
//
//
//
//
//
//var margo = Person()
//let alice = margo
//
////margo.age = 24
//
//print("age: \(alice.age)")
//print("isEqual: \(margo == alice)")


//var num1: Int = 1

//var str = "input"
//
////func changeNumber(var num: Int) {
////    num = 2
////    print(num) // 2
////    print(num1) // 1
////}
////changeNumber(num1)
//
//func changeString(_ str: inout String) {
//    print("input: \(str)")
//    str = "output"
//
//    print("output: \(str)")
//}
//
//changeString(&str)

//struct Address {
//    let home: Int
//    let street: String
//    let room: Int
//
//
//    func getFullAddress() {
//        print(description)
//    }
//}
//
//extension Address: CustomStringConvertible {
//    var description: String {
//        get {
//            return "Street: \(street), home: \(home), room: \(room)"
//        }
//    }
//}
//
//let address2 = Address(home: 11, street: "Bandery", room: 42)
//let address1 = Address(home: 33, street: "3CY", room: 777)
//
//address2.description
//
//class AddressBook {
//    var addresses: [Address]
//
//    init(addresses: [Address]) {
//        self.addresses = addresses
//    }
//
//    deinit {
//        print("AddressBook removed")
//    }
//
//    subscript(home: Int) -> Address? {
//        get {
//            guard let currentAddress = addresses.first(where: { $0.home == home }) else { return nil }
//            return currentAddress
//        }
//        set {
//            guard let newAddr = newValue else { return }
//            addresses.append(newAddr)
//        }
//    }
//}
//
//var book: AddressBook? = AddressBook(addresses: [address2, address1])
//var book2 = book
//
//book?[42] = Address(home: 42, street: "Street", room: 0)
//
//if let adrs = book?[41] {
//    print(adrs)
//}
//
//book = nil

//enum Season: Double {
//    case winter
//    case spring
//    case summer
//    case autumn
//}
//
//let cur = Season(rawValue: 1)

//func diagonalDifference(arr: [[Int]]) -> Int {
//    var c = arr.count
//    var pDiagonalSum = 0
//    var sdiagonalSum = 0
//
//    for i in 0..<c {
//        pDiagonalSum += arr[i][i]
//        sdiagonalSum += arr[i][c-i-1]
//    }
//    let diff = abs(pDiagonalSum - sdiagonalSum)
//
//    return diff
//}
//
//diagonalDifference(arr: [[11,2,4], [4,100,6], [10,8,-12]])

//MARK: - Strings

//func superReducedString(s: String) -> String {
//    var res = "Empty String"
//    var strArr = Array(s)
//    var c = 0
//    
//    for _ in 0..<strArr.count {
//        if strArr[c] == strArr[c+1] {
//            strArr.remove(at: c)
//            strArr.remove(at: c)
////            print(strArr)
//            c = c - 2
//        }
//
//        c += 1
//
//        if c == -1 && !strArr.isEmpty {
//            c += 1
//        }
//
//        if c == strArr.count - 1 {
//            if strArr.isEmpty {
//                return res
//            }
//
//            res = String(strArr)
//            break
//        }
//    }
//
//    return res
//}
//
//superReducedString(s: "abba1fsdzffgff")

//MARK: -
//func camelCase(_ s: String) -> Int {
//    if s == "" {
//        return 0
//    }
//
//    let sArr = Array(s)
//    var res = 0
//
//    res = sArr.filter { $0.isUppercase == true }.count + 1
//
//    return res
//}
//
//camelCase("oneTwoThree")

//MARK: -
//func minimumNumber(n: Int, password: String) -> Int {
//    var count = 0
//    let range = NSRange(location: 0, length: n)
//
//    let numRegex = try! NSRegularExpression(pattern: "[0-9]")
//    let numMatches = numRegex.matches(in: password, range: range)
//
//    let lowRegex = try! NSRegularExpression(pattern: "[a-z]")
//    let lowMatches = lowRegex.matches(in: password, range: range)
//
//    let upRegex = try! NSRegularExpression(pattern: "[A-Z]")
//    let upMatches = upRegex.matches(in: password, range: range)
//
//    let specRegex = try! NSRegularExpression(pattern: "[!@#$%^&*()+-]") // "+-" or "-+" matter
//    let specMatches = specRegex.matches(in: password, range: range)
//
//    if numMatches.isEmpty {
//        count += 1
//    }
//
//    if lowMatches.isEmpty {
//        count += 1
//    }
//
//    if upMatches.isEmpty {
//        count += 1
//    }
//
//    if specMatches.isEmpty {
//        count += 1
//    }
//
//    if n + count < 6 {
//        count = 6 - n
//    }
//
//    return count
//}
//
//minimumNumber(n: 7, password: "AUzs-nV")

//MARK: - Two Characters
//func removeDouble(_ s: String) -> String {
//    var sArr = Array(s)
//    var c = 0
//    var resStr = ""
//
//    for _ in 0..<sArr.count {
//        if sArr[c] == sArr[c + 1] {
//            var tempArr = sArr.filter { $0 != sArr[c] }
//            let diffLength = sArr.count - tempArr.count
//            sArr = tempArr
//            c -= diffLength
//            continue
//        }
//
//        c += 1
//
//        if c == -1 && !sArr.isEmpty {
//            c += 1
//        }
//    }
//
//    resStr = String(sArr)
//
//    if resStr.count == 2 && resStr.first == resStr.last {
//        resStr = ""
//    }
//
//    return resStr
//}
//
//func alternate(_ s: String) -> Int {
//    var resStr = ""
//
//    let tempStr = removeDouble(s)
//
//    if tempStr.count == 0 {
//        return 0
//    }
//
//    for char in tempStr {
//      if tempStr.firstIndex(of: char) != tempStr.lastIndex(of: char) {
//          resStr += String(char)
//      }
//    }
//
//    resStr = removeDouble(tempStr)
//
//    return resStr.count
//}

//func isValidStr(_ s: String) -> Bool {
//    if s.count == 1 {
//        return false
//    }
//
//    var sArr = Array(s)
//
//    for i in 1..<sArr.count {
//        if sArr[i] == sArr[i - 1] {
//            return false
//        }
//    }
//
//    return true
//}

//func alternate(_ s: String) -> Int {
//    var sArr = Array(s)
//    var c = 0
//    var resStr = ""
//
//    for _ in 0..<sArr.count - 1 {
//        if sArr[c] == sArr[c + 1] {
//            var tempArr = sArr.filter { $0 != sArr[c] }
//            let diffLength = sArr.count - tempArr.count
//            sArr = tempArr
//            c -= diffLength
//            continue
//        }
//
//        c += 1
//
//        if c == -1 && !sArr.isEmpty {
//            c += 1
//        }
//    }
//
//    var tempStr = String(sArr)
//
//    for char in tempStr {
//          if tempStr.firstIndex(of: char) != tempStr.lastIndex(of: char) {
//              resStr += String(char)
//          }
//        }
//
//
//    if isValidStr(resStr) {
//        return resStr.count
//    } else {
//        return 0
//    }
//}


//alternate("asvkugfiugsalddlasguifgukvsa")
//alternate("asdcbsdcagfsdbgdfanfghbsfdab")
//alternate("beabeefeab")

//=========!!!!!!!===========
//func alternate(_ s: String) -> Int {
//    let NUM_LETTERS : Int = 26;
//    // Save input
//    let length : Int = s.count
//    let str : String = s
//    // Edge case
//    if (length <= 1) {
//        return 0
//    }
//    // Create arrays representing the 26^2 subproblems
//    var table = [[Int]](repeating: [Int](repeating: 0, count: 26), count: 26)
//    var pair : [[Int]] = Array(repeating: Array(repeating: 0, count: NUM_LETTERS), count: NUM_LETTERS);
//    var count : [[Int]] = Array(repeating: Array(repeating: 0, count: NUM_LETTERS), count: NUM_LETTERS);
//    do {
//        var i : Int = 0;
//        while (i < length) {
//            let letter : Character = Array(str)[i];
//            let letterNum : Int = Int(UnicodeScalar(String(letter))!.value) - Int(UnicodeScalar(String("a"))!.value);
//            do {
//                var col : Int = 0;
//                // Update row
//                while (col < NUM_LETTERS) {
//                    if (pair[letterNum][col] == Int(UnicodeScalar(String(letter))!.value)) {
//                        count[letterNum][col] = -1;
//                    }
//                    if (count[letterNum][col] != -1) {
//                        pair[letterNum][col] = Int(UnicodeScalar(String(letter))!.value);
//                        count[letterNum][col] += 1;
//                    }
//                    col += 1;
//                }
//            }
//            do {
//                var row : Int = 0;
//                // Update column
//                while (row < NUM_LETTERS) {
//                    if (pair[row][letterNum] == Int(UnicodeScalar(String(letter))!.value)) {
//                        count[row][letterNum] = -1;
//                    }
//                    if (count[row][letterNum] != -1) {
//                        pair[row][letterNum] = Int(UnicodeScalar(String(letter))!.value);
//                        count[row][letterNum] += 1;
//                    }
//                    row += 1;
//                }
//            }
//            i += 1;
//        }
//    }
//    // Find max in "count" array
//    var maxCount : Int = 0;
//    do {
//        var row : Int = 0;
//        while (row < NUM_LETTERS) {
//            do {
//                var col : Int = 0;
//                while (col < NUM_LETTERS) {
//                    maxCount = max(maxCount, count[row][col]);
//                    col += 1;
//                }
//            }
//            row += 1;
//        }
//    }
//
//    return maxCount
//}

//alternate("asvkugfiugsalddlasguifgukvsa")
//alternate("asdcbsdcagfsdbgdfanfghbsfdab")
//alternate("beabeefeab")

//MARK: -
//func marsExploration(s: String) -> Int {
//    let searchStr = String(repeating: "SOS", count: s.count / 3)
//    let difference = zip(s, searchStr).filter { $0 != $1 }
//
//    return difference.count
//}
//
//marsExploration(s: "SOSSPSSQSSOR")

//MARK: -

//func hackerrankInString(s: String) -> String {
//    var resStr = ""
//    let range = NSRange(location: 0, length: s.count)
//    let regex = try! NSRegularExpression(pattern: "h.*a.*c.*k.*e.*r.*r.*a.*n.*k")
//
//    let match = regex.firstMatch(in: s, range: range)
//
//    if match != nil {
//        resStr = "YES"
//    } else {
//        resStr = "NO"
//    }
//
//    return resStr
//}
//
//hackerrankInString(s: "hhaacckkekraraannk")
//hackerrankInString(s: "rhbaasdndfsdskgbfefdbrsdfhuyatrjtcrtyytktjjt")

//MARK: -

//func caesarCipher(s: String, k: Int) -> String {
//    let original = "abcdefghijklmnopqrstuvwxyz"
//    let sufix = original.suffix(original.count - k)
//    let prefix = original.prefix(k)
//    let rotated = sufix + prefix
//
//    let pattern = "[a-zA-Z]"
//    let range = NSRange(location: 0, length: s.count)
//    let regex = try! NSRegularExpression(pattern: pattern)
//
//
//
//
//    return ""
//
//}

//func caesarCipher(s: String, k: Int) -> String {
//    var result = ""
//
//    for char in s {
//        if !char.isLetter {
//            print(UnicodeScalar(9992)!)
//            result += "\(char)"
//            continue
//        }
//
//        if char.isUppercase && char.isLetter {
//            let ch = UnicodeScalar((Int(char.asciiValue ?? 0) + k - 65) % 26 + 65)!
//            result += "\(ch)"
//        } else {
//            let ch = UnicodeScalar((Int(char.asciiValue ?? 0) + k - 97) % 26 + 97)!
//            result += "\(ch)"
//        }
//    }
//
//    return result
//}
//
//caesarCipher(s: "middle-Outz", k: 2)

//MARK: -

//======RegexOld=======
//func pangrams(s: String) -> String {
//    let range = NSRange(location: 0, length: s.count)
//    let regex = try! NSRegularExpression(pattern: "([a-z])(?!.*\\1)")
//    let matches = regex.matches(in: s.lowercased(), range: range)
//
//    if matches.count == 26 {
//        return "pangram"
//    } else {
//        return "not pangram"
//    }
//}

//======RegexNew=======
//func pangrams(s: String) -> String {
//    let matches = s.lowercased().ranges(of: /([a-z])(?!.*\1)/)
//
//    if matches.count == 26 {
//        return "pangram"
//    } else {
//        return "not pangram"
//    }
//}

//func pangrams(s: String) -> String {
////    let setCount = Set(s.lowercased())
////        .sorted(by: <)
////        .dropFirst()
////        .count
//
//    if Set(s.lowercased()).count == 27 {
//        return "pangram"
//    } else {
//        return "not pangram"
//    }
//}

//pangrams(s: "We promptly judged antique ivory buckles for the prize")
//pangrams(s: "We promptly judged antique ivory buckles for the next prize")

//MARK: -

//func separateNumbers(s: String) -> Void {
//    var subStr: Substring = ""
//    var isValid: Bool = false
//    var i = 1
//
//    while i <= s.count / 2 {
//        subStr = s.prefix(i)
//
//        if subStr.hasPrefix("0") {
//            break
//        }
//
//        var num = Int(subStr)
//        var validStr = String(num!)
//
//        while validStr.count < s.count {
//            num! += 1
//            validStr += String(describing: num!)
//        }
//
//        if s == validStr {
//            isValid = true
//            break
//        }
//
//        i += 1
//    }
//
//    print("\(isValid ? "YES \(subStr)" : "NO")")
//}

//separateNumbers(s: "1234")
//separateNumbers(s: "91011")
//separateNumbers(s: "99100")
//separateNumbers(s: "010203")
//separateNumbers(s: "999100010001")

//MARK: -

//func funnyString(s: String) -> String {
//    var res = "Not Funny"
//    var asciiArr: [Int] = []
//
//    for char in s.utf8 {
//        asciiArr.append(Int(char))
//    }
//
//    var reversedAsciiArr = Array(asciiArr.reversed())
//
//    print(asciiArr)
//    print(reversedAsciiArr)
//
//    var diff1: [Int] = []
//
//    for i in 0..<asciiArr.count - 1 {
//        diff1.append(abs(asciiArr[i + 1] - asciiArr[i]))
//    }
//
//    print(diff1)
//
//    var diff2: [Int] = []
//
//    for i in 0..<reversedAsciiArr.count - 1 {
//        diff2.append(abs(reversedAsciiArr[i + 1] - reversedAsciiArr[i]))
//    }
//
//    print(diff2)
//
//    if diff1 == diff2 {
//        res = "Funny"
//    }
//
//    return res
//}

//func funnyString(s: String) -> String {
//    let sArr = Array(s)
//    let rArr = Array(s.reversed())
//    var j = 1
//
//
//    for i in 1..<sArr.count {
//        if abs(Int(sArr[i].asciiValue!) - Int(sArr[i-1].asciiValue!)) == abs(Int(rArr[i].asciiValue!) - Int(rArr[i-1].asciiValue!)) {
//            j += 1
//        }
//    }
//    return j == sArr.count ? "Funny" : "Not Funny"
//}

//funnyString(s: "abc")

//MARK: -

func gemstones(arr: [String]) -> Int {
    let combined = arr.joined(separator: "")
    let unique = Array(Set(combined))
    let result = unique.filter { ch in
        arr.allSatisfy { str in
            str.contains(ch)
        }
    }
    
    return result.count
}

gemstones(arr: ["basdfj", "asdlkjfdjsa", "bnafvfnsd", "oafhdlasd"])
