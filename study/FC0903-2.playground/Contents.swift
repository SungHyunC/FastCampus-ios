import Cocoa

class Vehicle {
    var currentSpeed = 0.0
    var description : String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        print("speaker on")
    }
}

class Bicycle : Vehicle {
    var hasBasket = false
}

var bicycle = Bicycle()
bicycle.currentSpeed
bicycle.currentSpeed = 15.0
bicycle.currentSpeed

class Train : Vehicle {
    override func makeNoise() {
        super.makeNoise()
        print("choo choo")
    }
}

let train = Train()
train.makeNoise()

class Car : Vehicle {
    var gear = 1
    override var description: String {
        return super.description + "in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 30.0
car.gear = 2
print(car.description)

class AutomaticCar : Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")

/*
 상속이란?
 부모가 자식에게 재산을 물려주는 행위
 
 class 클래스 이름 : 부모클래스 이름 {
   // 하위 클래스 정의
 }
 */
