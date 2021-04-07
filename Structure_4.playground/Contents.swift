
struct Lecture{
    var title: String
    var maxStudents: Int = 10
    var numOfRegistered: Int = 0
    
    func remainSeats(of lec: Lecture) -> Int {
        let remainSeats = lec.maxStudents - lec.numOfRegistered
        return remainSeats
    }
    
    mutating func register(){
        // 등록된 학생수 증가시키기
        numOfRegistered += 1
    }
    // struct 안의 method가 stored property를 변경시킬때 mutating이라 표시해야 함
    
    static let target: String = "Anybody want to learn something"
    
    static func 소속학원이름() -> String{
        return "fast"
    }
}

var lec = Lecture(title: "IOS Basic")

//func remainSeats(of lec: Lecture) -> Int {
//    let remainSeats = lec.maxStudents - lec.numOfRegistered
//    return remainSeats
//}

lec.remainSeats(of: lec)

lec.register()
lec.remainSeats(of: lec)
Lecture.target
Lecture.소속학원이름()

struct Math {
    static func abs(value: Int) -> Int {
        if value > 0 {
            return value
        } else {
            return -value
        }
    }
}

Math.abs(value: -20)

// 제곱, 반값
extension Math {
    static func sqaure(value: Int) -> Int {
        return value * value
    }
    
    static func half(value: Double) -> Double {
        return value/2
    }
}

Math.half(value: 23)


var value: Int = 10

extension Int {
    func sqaure() -> Int {
        return self * self
    }
    func half() -> Int {
        return self/2
    }
    static func printprint(){
        print("되는가")
    }
    
}
value.sqaure()
value.half()
Int.printprint()
