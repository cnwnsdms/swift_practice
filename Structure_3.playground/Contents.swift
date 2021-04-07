import Foundation

// stored property - willSet, didSet
// computed property - get, set
// type property - static
// lazy property


struct Person {
    var firstName: String {
        willSet{
            print("willSet: \(firstName) --> \(newValue)")
        }
        // struct의 stored property가 값이 변하기 바로 직전에 didSet{} 이 실행됨
        didSet{
            print("didSet: \(oldValue) --> \(firstName)")
        }
        // struct의 stored property가 값이 변했을 때 didSet{} 이 실행됨
    }
    var lastName: String
    
    lazy var isPopular: Bool = {
        if fullName == "Jay Park"{
            return true
        } else {
            return false
        }
    }()
    // lazy property: 사용자가 접근할때 쓸수있게. 접근전엔 메모리에 올리지 않음. 효율화 위해 사용
    
    
//    var fullName:String{
//        return "\(firstName) \(lastName)"
//    }
    // computed property: read only. 수정하려면 get{}set{}으로 가능
    var fullName:String{
        get{
            return "\(firstName) \(lastName)"
        }
        set{
            // newValue // readonly이지만 바꾸려하는 것이 있으면 그것을 newvalue에 넣어줌
            if let firstName = newValue.components(separatedBy: " ").first {
                self.firstName = firstName
            }
            if let lastName = newValue.components(separatedBy: " ").last {
                self.lastName = lastName
            }
        }
    }
    
//    func fullName() -> String {
//        return "\(firstName) \(lastName)"
//    }
    
// property vs method
// 계산이 많이 필요함, DB access나 File io 필요함 -> method 사용
// 단순하거나 setter가 필요함             -> property 사용
    
    static let isAlien: Bool = false
    // type property
    // instance와 상관없이 사용 가능.
}

var person = Person(firstName: "Jason", lastName: "Lee")

person.firstName
person.lastName

person.firstName = "Jim"
person.lastName = "Kim"

person.firstName
person.lastName

person.fullName = "Jay Park"
person.firstName
person.lastName
