import Cocoa

//함수는 작업의 가장 작은 단위이자 코드의 집합입니다.

/*
 func 함수명(파라미터 이름: 데이터 타입) -> 반환타입 {
    return 반환 값
 }
 */

func sum(a: Int, b: Int) -> Int {
    return a+b
}

sum(a: 5, b: 3)

func hello() -> String{
    return "hello"
}

hello()

func printName() -> Void {

}

func greeting(friend: String, me: String = "gunter") {
    print("Hello, \(friend)! I'm \(me)")
}

greeting(friend: "Albert")

/*
 func 함수 이름(전달인자 레이블 : 매개변수 이름 : 매개변수 타입, 전달인자 레이블:
    매개변수 이름: 매개변수 타입...) -> 반환 타입 {
 return 반환 값
}
 */
func sendMessage(from myName: String, to name: String) -> String{
    return "Hello \(name)! I'M \(myName)"
}

sendMessage(from: "Gunter", to: "Json")

func sendMessage(_ name: String) -> String {
    return "Hello \(name)"
}

sendMessage("권태완")

func sendMessage(me : String, friends : String...) -> String {
    return "Hello \(friends)! I'm \(me)"
}

sendMessage(me: "Gunter", friends: "Json", "Albert", "Stella")
