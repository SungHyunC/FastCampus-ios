import Cocoa

enum PhoneError: Error {
    case unknown
    case batteryLow(batteryLevel: Int)
}

//throw PhoneError.batteryLow(batteryLevel: 20)

func checkPhoneBatteryStatus(batteryLevel: Int) throws -> String {
    guard batteryLevel != -1 else { throw PhoneError.unknown }
    guard batteryLevel > 20 else { throw
        PhoneError.batteryLow(batteryLevel: 20)}
    return "배터리 상태가 정상입니다."
}

/*
 do {
 try 오류 발생 가능코드
 } catch 오류 패턴 {
  처리 코드
 }
 */

do {
    try checkPhoneBatteryStatus(batteryLevel: 20)
} catch PhoneError.unknown {
    print("알 수 없는 에러입니다.")
} catch PhoneError.batteryLow(let baterryLebel) {
    print("배터리 전원 부족 남은 배터리 : \(baterryLebel)%")
} catch {
    print("그 외 오류 발생 : \(error)")
}

let status = try? checkPhoneBatteryStatus(batteryLevel: 30)
print(status)

let status2 = try! checkPhoneBatteryStatus(batteryLevel: 30)
print(status2)

/*
 에러 처리란?
 
 프로그램 내에서 에러가 발생한 상황에 대해 대응하고 이를 복구하는 과정
 
 발생(throwing)
 감지(catching)
 전파(propagating)
 조작(manipulating)
 
 */
