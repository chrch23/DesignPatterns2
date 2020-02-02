import Foundation

enum Kind {
    case football, tennis, baseball
}

protocol Sport {
    func play()
}

class Football: Sport {
    func play() {
        print("Foodball is very popular game")
    }
}

class Tennis: Sport {
    func play() {
        print("To play tennis you need special items")
    }
}

class Baseball: Sport {
    func play() {
        print("Baseball is American game")
    }
}

class SimpleFactory {
    static func produce(kind: Kind) -> Sport {
        switch kind {
        case .football: return Football()
        case .tennis: return Tennis()
        case .baseball: return Baseball()
        }
    }
}

let football = SimpleFactory.produce(kind: .football)
football.play()

let tennis = SimpleFactory.produce(kind: .tennis)
tennis.play()

let baseball = SimpleFactory.produce(kind: .baseball)
baseball.play()
