import Foundation

protocol Robbot {
    func present()
}

class BigRobbot: Robbot {
    func present() {
        print("I am big robbot")
    }
}

class LittleRobbot: Robbot {
    func present() {
        print("I am little robbot")
    }
}

protocol Plane {
    func present()
}

class BigPlane: Plane {
    func present() {
        print("I am big plane")
    }
}

class LittlePlane: Plane {
    func present() {
        print("I am little plane")
    }
}

protocol Factory {
    func produceRobbot() -> Robbot
    func producePlane() -> Plane
}

class BigFactory: Factory {
    func produceRobbot() -> Robbot {
        print("Big robbot produced")
        return BigRobbot()
    }
    
    func producePlane() -> Plane {
        print("Big plane produced")
        return BigPlane()
    }
}

class LittleFactory: Factory {
    func produceRobbot() -> Robbot {
        print("Little robbot produced")
        return LittleRobbot()
    }
    
    func producePlane() -> Plane {
        print("Little plane produced")
        return LittlePlane()
    }
}

let bigFactory = BigFactory()
let bigRobbot = bigFactory.produceRobbot()
bigRobbot.present()

print("")

let littleFactory = LittleFactory()
let littlePlane = littleFactory.producePlane()
littlePlane.present()
