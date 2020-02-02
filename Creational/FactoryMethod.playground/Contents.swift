import Foundation

protocol Car {
    func present()
}

class Audi: Car {
    func present() {
        print("I have Audi")
    }
}

class Jaguar: Car {
    func present() {
        print("I have Jaguar")
    }
}

class BMW: Car {
    func present() {
        print("I have BMW")
    }
}

protocol CarFactory {
    func produce() -> Car
}

class AudiFactory: CarFactory {
    func produce() -> Car {
        print("Audi produced")
        return Audi()
    }
}

class JaguarFactory: CarFactory {
    func produce() -> Car {
        print("Jaguar produced")
        return Jaguar()
    }
}

class BMWFactory: CarFactory {
    func produce() -> Car {
        print("BMW produced")
        return BMW()
    }
}

let audiFactory = AudiFactory()
let audi = audiFactory.produce()
audi.present()

print("")

let jaguarFactory = JaguarFactory()
let jaguar = jaguarFactory.produce()
jaguar.present()

print("")

let bmwFactory = BMWFactory()
let bmw = bmwFactory.produce()
bmw.present()
