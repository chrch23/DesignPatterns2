import Foundation

protocol StringsProtocol {
    var stringOne: String { get }
    var stringTwo: String { get }
}

class Strings: StringsProtocol {
    var stringOne: String
    var stringTwo: String
    
    init(stringOne: String, stringTwo: String) {
        self.stringOne = stringOne
        self.stringTwo = stringTwo
    }
}

protocol StringsBuilderProtocol {
    func setStringOne(string: String)
    func setStringTwo(string: String)
    func createStrings() -> StringsProtocol?
}

class StringsBuilder: StringsBuilderProtocol {
    private var _stringOne: String?
    private var _stringTwo: String?
    
    func setStringOne(string: String) {
        _stringOne = string
    }
    
    func setStringTwo(string: String) {
        _stringTwo = string
    }
    
    func createStrings() -> StringsProtocol? {
        guard let stringOne = _stringOne, let stringTwo = _stringTwo else { return nil }
        return Strings(stringOne: stringOne, stringTwo: stringTwo)
    }
}

let builder = StringsBuilder()
builder.setStringOne(string: "Hello")
builder.setStringTwo(string: "World")

let strings = builder.createStrings()
print(strings?.stringOne ?? "")
print(strings?.stringTwo ?? "")
