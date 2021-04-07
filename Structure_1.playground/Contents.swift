// Struct는 새로운 변수가 할당될때 값을 복사해서 할당함 -> value type
// -> 새로운 instance가 Struct 안의 내용을 바꿔도 다른 instance에 영향 없음
// Heap영역에 저장

// Class는 새로운 변수가 할당될때 기존의 값을 참조해 할당함 -> reference type
// -> 새로운 instance가 class 안의 내용을 바꾸면 다른 instance에 영향 끼침
// Stack영역에 저장

import Foundation

//let store1 = (x: 3, y:5, name: "Gs")
//let store2 = (x: 4, y:6, name: "Seven")
//let store3 = (x: 1, y:7, name: "Cu")
//
//func distance(current: (x: Int, y: Int), target: (x: Int, y: Int)) -> Double {
//    let distanceX = Double(target.x - current.x)
//    let distanceY = Double(target.y - current.y)
//    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
//    return distance
//}
//
//func printClosestStore(currentLocation:(x: Int, y: Int), stores:[(x: Int, y: Int, name: String)]){
//    var closestStoreName = ""
//    var closestStoreDistance = Double.infinity
//
//    for store in stores{
//        let distanceToStore = distance(current: currentLocation, target: (x:store.x, y: store.y))
//        closestStoreDistance = min(distanceToStore, closestStoreDistance)
//        if closestStoreDistance == distanceToStore {
//            closestStoreName = store.name
//        }
//    }
//    print("Closest store: \(closestStoreName)")
//}
//
//let myLocation = (x: 2, y: 2)
//let stores = [store1, store2, store3]
//
//printClosestStore(currentLocation: myLocation, stores: stores)






//struct Location {
//    let x: Int
//    let y: Int
//}
//
//let store1 = (loc: Location(x: 3, y:5), name: "Gs")
//let store2 = (loc: Location(x: 4, y:6), name: "Seven")
//let store3 = (loc: Location(x: 1, y:7), name: "Cu")
//
//func distance(current: Location, target: Location) -> Double {
//    let distanceX = Double(target.x - current.x)
//    let distanceY = Double(target.y - current.y)
//    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
//    return distance
//}
//
//func printClosestStore(currentLocation:Location, stores:[(loc: Location, name: String)]){
//    var closestStoreName = ""
//    var closestStoreDistance = Double.infinity
//
//    for store in stores{
//        let distanceToStore = distance(current: currentLocation, target: store.loc)
//        closestStoreDistance = min(distanceToStore, closestStoreDistance)
//        if closestStoreDistance == distanceToStore {
//            closestStoreName = store.name
//        }
//    }
//    print("Closest store: \(closestStoreName)")
//}
//
//let myLocation = Location(x: 2, y: 2)
//let stores = [store1, store2, store3]
//
//printClosestStore(currentLocation: myLocation, stores: stores)



struct Location {
    let x: Int
    let y: Int
}

func distance(current: Location, target: Location) -> Double {
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    return distance
}


struct Store {
    let loc:Location
    let name: String
    let deliveryRange = 2.0
    
    func isDeliverable(userLoc: Location) -> Bool {
        let distanceToStore = distance(current: userLoc, target: loc)
        /// target 어디서??
        return distanceToStore < deliveryRange
    }
}

let store1 = Store(loc: Location(x: 3, y:5), name: "Gs")
let store2 = Store(loc: Location(x: 4, y:6), name: "Seven")
let store3 = Store(loc: Location(x: 1, y:7), name: "Cu")


func printClosestStore(currentLocation:Location, stores:[Store]){
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    var isDeliverable = false
    
    for store in stores{
        let distanceToStore = distance(current: currentLocation, target: store.loc)
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        if closestStoreDistance == distanceToStore {
            closestStoreName = store.name
            isDeliverable = store.isDeliverable(userLoc: currentLocation)
        }
    }
    print("Closest store: \(closestStoreName), isDeliverable: \(isDeliverable)")
}

let myLocation = Location(x: 2, y: 5)
let stores = [store1, store2, store3]

printClosestStore(currentLocation: myLocation, stores: stores)
