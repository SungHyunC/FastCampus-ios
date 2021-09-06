import Cocoa


/*
 특정 역할을 하기 위한 메서드,프로퍼티, 기타 요구사항 등의 청사진
 
 protocol 이름 {
 
 }
 */

protocol SomeProtocol {
    
}

protocol SomeProtocol2 {
    
}

struct SomeStructrue: SomeProtocol, SomeProtocol2 {
    
}


//class SomeClass : SomeSuperclass, FristProtocol, AnotherProtocol {
//
//}

protocol FirstProtocol {
    var name: Int { get set}
    var age: Int { get }
}

protocol AnotherProtocl {
    static var someTypeProperty : Int { get set}
}

protocol FullyNames {
    var fullName : String { get set }
    func printFullName()
}

struct Person : FullyNames {
    var fullName: String
    
    func printFullName() {
        print(fullName)
    }
}

protocol SomeProtocol3 {
    func someTypeMethod()
}

protocol SomeProtocol4 {
    init(someParameter : Int)
}

protocol SomeProtocol5 {
    init()
}

class SomeClass : SomeProtocol5 {
    required init() {
        
    }
}
