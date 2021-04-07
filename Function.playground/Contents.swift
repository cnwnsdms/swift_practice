
func printName(){
    print("--> My name is Jason")
}

printName()

func printMultipleOfTen(value: Int){
    print("\(value) * 10 = \(value * 10)")
}

printMultipleOfTen(value: 5)
// argument에 _를 붙이면 파라미터에 value name을 안적어줘도 됨

func printMultipleOfTen(_ value: Int){
    print("\(value) * 10 = \(value * 10)")
}

printMultipleOfTen(5)

func printTotalPrice(가격 price: Int, 갯수 count: Int){
    print("Total Price: \(price * count)")
}

printTotalPrice(가격: 10, 갯수: 10)
// 함수 외부에서 파라미터 넣을땐 가격/갯수로 보이지만(external name)
// 함수 내부에서는 price와 count를 참조함

func printTotalPriceDefault(price: Int = 1500, count: Int){
    print("Total Price: \(price * count)")
}

printTotalPriceDefault(count: 5)

func totalPrice(price: Int, count: Int) -> Int{
    let totalPrice = price * count
    return totalPrice
}

let calculatedPrice = totalPrice(price: 10000, count: 77)
calculatedPrice

func printTotalPrice(price: Int, count: Int){
    print("Total Price;\(price * count)")
}

func printTotalPrice(price: Double, count: Double){
    print("Total Price;\(price * count)")
}

func printTotalPrice(가격: Double, 갯수: Double){
    print("Total Price;\(가격 * 갯수)")
}
// overload: 같은 함수 이름, 다른 내용(다른 타입)


var value = 3

//func increamentandPrint(value: Int){
//    value += 1
//    print(value)
//}
//increamentandPrint(value)

func increamentandPrint(_ value: inout Int){
    value += 1
    print(value)
}
//increamentandPrint(&value)
increamentandPrint(&value)

// paramiter로 들어오는 값은 복사되어 상수로 넘어가기 때문에 함수안에서 내용변경을 하려면 In-out parameter써야함

func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func subtract(_ a: Int, _ b : Int) -> Int {
    return a - b
}

var function = add
function(4, 2)
function = subtract
function(4, 2)

func printResult(_ function: (Int, Int)-> Int, _ a: Int, _ b: Int){
    let result = function(a, b)
    print(result)
}

printResult(add, 10, 5)


