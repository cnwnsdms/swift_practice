// 1. 강의 이름, 강사 이름, 학생수를 가지는 struct 만들기(Lecture)
// 2. 강의 어레이와 강사 이름을 받아서 해당 강사의 강의 이름을 출력하는 함수 만들기
// 3. 강의 3개 만들고 강사 이름으로 강의 찾기

//

struct Lecture: CustomStringConvertible{
    var description: String{
        return "Title: \(title), name: \(name)"
    }
    // CustomStringConvertible: protocol이라 부름. python의 __str__ 같은 개념
    // computed property
    // 데이터를 저장하진 않고 저장된 정보를 이용해서 가공 혹은 계산된 값을 제공할때 사용
    
    let title: String
    let name: String
    let count: Int
    
    // stored property
}

func findName(lectures: [Lecture], name: String){
    var title: String = ""
    for lecture in lectures {
        if lecture.name == name {
            title = lecture.title
        }
    }
    
//    let title = lectures.first{(lec) -> Bool in return lec.name == name }?.title ?? ""
//    let title = lectures.first{$0.name == name}?.title ?? ""

    print(title)
}

let lecture1 = Lecture(title: "React", name:"Jason", count: 15)
let lecture2 = Lecture(title: "Node", name:"Charlet", count: 25)
let lecture3 = Lecture(title: "Ajax", name:"Sam", count: 20)

let lectures = [lecture1, lecture2, lecture3]

findName(lectures:lectures, name:"Sam")
print(lecture1)
