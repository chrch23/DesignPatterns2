import Foundation

class First {
    func firstInfo() {
        print("I am first")
    }
}

protocol SecondProtocol {
    func secondInfo()
}

class Second: SecondProtocol {
    func secondInfo() {
        print("I am second")
    }
}

class Adapter: SecondProtocol {
    private var _first: First
    
    init(first: First) {
        _first = first
    }
    
    func secondInfo() {
        _first.firstInfo()
    }
}

let adapter = Adapter(first: First())
adapter.secondInfo()
