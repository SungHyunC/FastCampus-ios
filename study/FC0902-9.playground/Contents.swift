import Cocoa

struct User {
    var nickname: String
    var age: Int
    
    func information() {
        print("\(nickname) \(age)")
    }
}

var user = User(nickname: "Gunter", age: 23)

user.nickname
user.nickname = "Ablert"
user.nickname

user.information()

//구조체와 클래스
/*
 struct 구조체 이름 {
    프로퍼티(멤버변수)와 메서드(멤버함수)
}
 */

