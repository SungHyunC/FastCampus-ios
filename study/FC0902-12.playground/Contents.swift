import Cocoa

struct Dog {
    var name : String
    let gender : String
}

var dog = Dog(name: "Gunter", gender: "Male")
print(dog)

dog.name = "권태완"

let dog2 = Dog(name: "Gunter", gender: "male")
//dog2.name = "권태완"

class Cat {
    var name : String
    let gender : String
    
    init(name : String, gender : String) {
    self.name = name
    self.gender = gender
  }
}

let cat = Cat(name: "json", gender: "male")
cat.name = "gunter"
print(cat.name)

struct Stock {
    var averagePrice: Int
    var quantity : Int
    var purchasePrice : Int {
        get {
            return averagePrice * quantity
        }
        
        set(newPrice) {
         averagePrice = newPrice / quantity
        }
        
//        set {
//         averagePrice = newValue / quantity
//        }
    }
}

var stock = Stock(averagePrice: 2300, quantity: 3)
print(stock)
stock.purchasePrice
stock.purchasePrice = 3000
stock.averagePrice

class Account {
    var credit : Int = 0 {
    // 소괄호 이름 지정
        willSet {
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        
        didSet {
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}

var account = Account()
account.credit = 1000

struct SomeStructure {
    static var storedTypeProperty = "Some value." //스토어
    static var computedTypeProperty : Int { //컴퓨디드
        return 1
    }
}

SomeStructure.computedTypeProperty
SomeStructure.storedTypeProperty
SomeStructure.storedTypeProperty = "hello"
SomeStructure.storedTypeProperty
/*
 Properties(프로퍼티)란?
 클래스, 구조체 또는 열거형 등에 관련된 값을 뜻한다.
 
 저장 프로퍼티
 
 연산 프로퍼티
 
 타입 프로퍼티
 
 */
