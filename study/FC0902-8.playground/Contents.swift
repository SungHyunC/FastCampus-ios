import Cocoa

var number : Int? = 3
print(number)
print(number!)

if let result = number {
    print(result)
} else {
    
}

func test() {
    let number: Int? = 5
    guard let result = number else { return }
    print(result)
}

test()

let value : Int? = 6
if value == 6 {
    print("value가 6입니다.")
} else {
    print("value가 6이 아닙니다.")
}
//묵시적 해제
let string = "12"
var stringToInt : Int! = Int(string)
print(stringToInt + 1)
/*
 옵셔널 해제 방법
 명시적 해제 : 강제 해재 / 비강제 해제(옵셔널 바인딩)
 
 묵시적 해제
 컴파일러에 의한 자동 해제 / 옵셔널의 묵시적 해제
 */
