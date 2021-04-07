//var evenNumbers: [Int] = [2, 4, 6, 8]
//
//let evenNumbers1: Array<Int> = [2, 4, 6, 8]
//// 둘다 가능
//
//evenNumbers.append(10)
//evenNumbers += [12, 14, 16]
//evenNumbers.append(contentsOf: [18, 20])
//
//let isEmpty = evenNumbers.isEmpty
//
//evenNumbers.count
//
//let firstItem = evenNumbers.first  // 값이 나올수도 있고 안나올수도 있어서 optional임
//let lastItem = evenNumbers.last
//
//if let firstElement = evenNumbers.first{
//    print("--> first item :\(firstElement)")
//} else {
//    print("없음")
//}
//
//let ItIsOptional = evenNumbers.min()   // 값이 나올수도 있고 안나올수도 있어서 optional임
//print(evenNumbers.max()!)
//
//var first = evenNumbers[0] // optional이 아닌대신 값이 없으면 error임
//
//let firstToThree = evenNumbers[0...2]
//let firstThree = evenNumbers.prefix(3)
//let lastThree = evenNumbers.suffix(3)
//
//evenNumbers.insert(0, at:0)
//
//evenNumbers.remove(at: 0)
//evenNumbers
//
//evenNumbers[0...2] = [-2, 0, 2]
//
//evenNumbers.swapAt(0, evenNumbers.count-1) // 0과 마지막 바꾸기
//
//
//for num in evenNumbers{
//    print(num)
//}
//
//
//for (index, num) in evenNumbers.enumerated() {
//    print("inx: \(index), value: \(num)")
//}
//
//evenNumbers.dropFirst(3)    // 실제 값에 영향을 주지않고 새로운 값을 return함
//evenNumbers
//
//// --------------------------------------------------------
//
//var scoreDic: [String: Int] = ["Jason": 80, "Jay": 95, "Jake":90]
//// var scoreDic: Dictionary<String, Int> = ["Jason": 80, "Jay": 95, "Jake":90]
//
//let whatIsThis = scoreDic["Jason"] // optional
//
//if let score = scoreDic["none"]{
//    score
//} else {
//    print("score 없음")
//}
//
//// scoreDic = [:]
//scoreDic.isEmpty
//scoreDic.count
//
//// update
//scoreDic["Jason"] = 99
//scoreDic
//
//// add
//scoreDic["Jack"] = 100
//scoreDic
//
//// delete
//scoreDic["Jack"] = nil
//scoreDic
//
//for (name, score) in scoreDic {
//    print("name: \(name), score: \(score)")
//}
//
//for key in scoreDic.keys{
//    print(key)
//}
//
//for value in scoreDic.values{
//    print(value)
//}
//
//var dic : [String: String] = ["이름":"추준은", "직업":"간호사", "도시":"대구"]
//dic["도시"] = "부산"
//
//func nameAndCity(_ : [String:String]){
//    if let name = dic["이름"], let city = dic["도시"] {
//        print(name, city)
//    } else {
//        print("없음")
//    }
//}
//
//nameAndCity(dic)
//
//// --------------------------------------------------------
//
//var someSet: Set<Int> = [ 1, 2, 3, 1, 2]
//
//someSet.isEmpty
//someSet.count
//
//someSet.contains(4)
//someSet.contains(1)
//
//someSet.insert(5)
//
//someSet.remove(1)
//someSet

// --------------------------------------------------------

//var multiplyClosure: (Int, Int) -> Int = {
//    $0 * $1
//}

var multiplyClosure: (Int, Int) -> Int = {
    a, b in return a * b
}

let result = multiplyClosure(4,2)


func operateTwoNum(a: Int, b: Int, operation:(Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    return result
}

operateTwoNum(a: 4, b:2, operation: multiplyClosure)

var addClosure: (Int, Int) -> Int = {
    a, b in return a + b
}

operateTwoNum(a: 4, b:2, operation: addClosure)

operateTwoNum(a:4, b:2){a, b in return a / b}

let voidClosure:() -> Void = {
    print("asdasdasd")
}
voidClosure()

// Cqpturing Values

var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()
incrementer()
count

// closure =
// Higher Order Function 과 (인자를 함수로 받을수 있는 유형의 함수. map, filter, reduce 등에 많이 쓰임)
// Completion Block에 많이 쓰임(callback 느낌. 비동기 코드 완료 후 사용)
// 일반함수와 대표적 차이: 이름이 없음. func 키워드 필요 없음.

/*
{(param) -> return type in
    statement
    ...
}
*/

// Example 1. Cho Simple Closure

let ChoSimpleClosure = {
    
}
ChoSimpleClosure()

// Example 2. 코드블록을 구현한 closure

let simpleClosure = {
    print("Hello, closure")
}

simpleClosure()

// Example 3. input 파라미터를 받는 closure

let inputClosure: (String) -> Void = { name in
    print("Hello, \(name) ")
}
inputClosure("Korea")

// Example 4. 값을 리턴하는 closure

let returnClosure: (String) -> String = { name in
    return "Hello, \(name) "
}

returnClosure("Japan")

// Example 5. closure를 파라미터로 받는 함수

//func someSimpleFunction(ChoSimpleClosure:() -> Void){
//    print("함수에서 호출되었음")
//}
//someSimpleFunction(ChoSimpleClosure: {
//    print("hello hello")
//})

func someSimpleFunction(ChoSimpleClosure:() -> Void){
    print("함수에서 호출되었음")
    ChoSimpleClosure()
}

someSimpleFunction(ChoSimpleClosure: {
    print("hello hello")
})


// Example 6: Trailing Closure

func otherSimpleFunction(message: String, ChoSimpleClosure:() -> Void){
    print("message: \(message)")
    ChoSimpleClosure()
}

otherSimpleFunction(message:" 어렵다...", ChoSimpleClosure: {print("시행완료")})
otherSimpleFunction(message:" 어렵다..."){print("시행완료")}
// 마지막 인자가 함수라면 생략 가능
