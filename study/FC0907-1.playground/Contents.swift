import Cocoa

/*
 extension SomeType {
  // 추가 기능
 }
 */

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    
    var isOdd : Bool {
        return self % 2 == 1
    }
}

var number = 3
number.isOdd
number.isEven

extension String {
    func converToInt() -> Int? {
        return Int(self)
    }
}

var string = "0"
string.converToInt()

/*
 익스텐션?
 기존의 클래스, 구조체, 열거형, 프로토콜에 새로운 기능을 추가하는 기능
 
 - 연산 타입 프로퍼티 / 연산 인스턴스 프로퍼티
 - 타입 메서드 / 인스턴스 메서드
 - 이니셜라이저
 - 서브스크립트
 - 중첩 타입
 - 특정 프로토콜을 준수할 수 있도록 기능 추가
 */
