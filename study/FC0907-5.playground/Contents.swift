import Cocoa

/*
 클로저란?
 코드에서 전달 및 사용할 수 있는 독립 기능 블록이며, 일급 객체의 역할을 할 수 있음
 
 일급객체?
 전달 인자로 보낼 수 있고, 변수/상수 등으로 저장하거나 전달할 수 있으며, 함수의 반환 값이 될 수도 있다.
 
 Named Closure,
 Unnamed Closure
 
 func hello() {
  print("안녕하세요")
 }
 
 let hello2 = { print("안녕하세요") }
 
 클로저 표현식
 { (매개 변수) -> 리턴 타입 in
    실행 구문
 }
 */

let hello = { () -> () in
    print("hello")
}

hello()

let hello2 = { (name: String) -> String in
  return "Hello, \(name)"
}

hello2("Gunter")

func doSomething(closure: () -> ()) {
    closure()
}

doSomething(closure: { () -> () in
    print("hello")
})

doSomething() {
 print("hello2")
}

doSomething {
 print("hello3")
}

func doSomething2() -> () -> () {
    return { () -> () in
        print("hello4")
    }
}

doSomething2()()

func doSomething2(success: () -> (), fail: ()-> ()) {
    
}

doSomething2 {
    
} fail: {
    
}

func doSomething3(closure: (Int, Int, Int) -> Int) {
    closure(1,2,3)
}

doSomething3(closure: { ( a, b, c) in
    return a+b+c
})

doSomething3(closure: {
    return $0+$1+$2
})

doSomething3(closure: {
    $0+$1+$2
})

doSomething3() {
    $0+$1+$2
}

doSomething3 {
    $0+$1+$2
}

