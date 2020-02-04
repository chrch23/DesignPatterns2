import Foundation

protocol Car {
    func drive()
}

class Audi: Car {
    func drive() {
        print("drive audi")
    }
}

class Jaguar: Car {
    func drive() {
        print("drive jaguar")
    }
}

class BMW: Car {
    func drive() {
        print("drive bmw")
    }
}

class Driver {
    private var _car: Car
    
    func drive() {
        _car.drive()
    }
    
    func new(_ car: Car) {
        print("")
        _car = car
    }
    
    init(car: Car) {
        _car = car
    }
}

let driver = Driver(car: Audi())
driver.drive()
driver.new(BMW())
driver.drive()
driver.new(Jaguar())
driver.drive()
