//import Foundation
//
//var i = 0
//while i<10{
//    print(i)
//
//    if i == 5{
//        break
//    }
//
//    i+=1
//}
//
//// do{} while => repeat{}while
//
//let closedRange = 0...10
//let halfClosedRange = 0..<10
//
//var sum = 0
//for i in halfClosedRange {
//    print("-->\(i)")
//    sum += i
//}
//print("->>> total sum:\(sum)")
//
//
//var sinValue: CGFloat = 0
//for i in closedRange {
//    sinValue = sin(CGFloat.pi/4 * CGFloat(i))
//}
//
//let name:String = "Jason"
//for _ in closedRange {
//    print("-->\(name)")
//}
//
//// 쓸 변수가 없다면 _
//
//for i in closedRange{
//    if i % 2 == 0{
//        print("--> 짝수: \(i)")
//    }
//}
//
//for i in closedRange where i % 2 == 0 {
//    print("--> 짝수: \(i)")
//}
//// for문에 조건 넣기 가능 + where로
//
//for i in closedRange where i != 3 {
//    print("--> \(i)")
//}
//
//for i in closedRange {
//    if i == 3 {
//        continue
//    }
//    print("--> \(i)")
//}



let num = 10

switch num{
case 0:
    print("--> 0입니다")
case 1..<10:
    print("--> 1~10입니다")
case 10:
    print("--> 10입니다")
default:
    print("--> 나머지입니다")

}

let num1 = 21
switch num1 {
case _ where num1 % 2 == 0:
    print("--> 짝수")
default:
    print("--> 홀수")
}

let coordinate = (x:10, y:10)

switch coordinate{
case(0,0):
    print("--> 원점이네요")
case(let x,0):
    print("--> x축이네요, x: \(x)")
case(0,_):
    print("--> y축이네요")
case(let x, let y) where x == y:
    print("--> x랑 y랑 같음 x,y = \(x),\(y)")
default:
    print("--> 좌표 어딘가")
}
