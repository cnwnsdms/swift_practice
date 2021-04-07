
var carName: String?
carName = nil
carName = "탱크"

var favoriteMovieStar: String? = nil
let num = Int("10")
// type은 Int? 임. Int안에 Int로 변환될수 있는 값이 들어올 수도있고 변환 불가할수도 있음. 불가하면 nil임

// 고급기능 4가지

// Forced unwrapping > 억지로 박스 까보기
// Optional binding (if let) > 부드럽게 박스 까보자1
// Optional binding (guard) > 부드럽게 박스 까보자2
// Nil coalescing > 박스를 까봤더니 값이 없으면 디폴트 값을 줘보자


// print(carName)   // optional("탱크") or nil 로 출력
//print(carName!)   // Forced unwrapping. value 없으면 error뜸

if let unwrappedCarName = carName{
    print(unwrappedCarName)
} else {
    print("Car Name 없다")
}

func printParsedInt(from: String){
    if let parsedInt = Int(from){
        print(parsedInt)
        //optional("Int") 시 시행
    } else{
        // nill 시 시행
        print("Int로 컨버팅 안됨")
    }
}

func printParsedInt2(from: String){
    guard let parsedInt = Int(from) else {
        print("Int로 컨버팅 안됨")
        return
    }
    print(parsedInt)
}
// nil시 한번 걸러주는 느낌. 그 밑에 nil아닐때의 코드 작성해서 덜 복잡하게. -> guard

printParsedInt(from: "100")
printParsedInt(from: "hello")

// let myCarName: String = carName -> carName이 optional이라 String type으로 할당 불가
let myCarName: String = carName ?? "모델 S"
// carName은 optional이지만 String이 아니라 nil이면 "모델 S" 로 default를 해놨기 때문에 무조건 String이라 할당 가능. ?? 로



let favoriteFood: String? = nil

if let foodName = favoriteFood {
    print(foodName)
} else {
    print("없음")
}



func printNickName(name: String?){
    guard let nickName = name else {
        print("nick name 이상함")
        return
    }
    print(nickName)
}

printNickName(name: "nickName")
