import Foundation

class Name {
    func my(name: String) -> String {
        return "My name is \(name).\n"
    }
}

class Age {
    func my(age: Int) -> String {
        return "I am \(age) years old.\n"
    }
}

class Country {
    func my(country: String) -> String {
        return "And i live in \(country).\n"
    }
}

class Presentation {
    private let _name = Name()
    private let _age = Age()
    private let _country = Country()
    
    func present(name: String, age: Int, country: String) -> String {
        return _name.my(name: name) + _age.my(age: age) + _country.my(country: country)
    }
}

let presentation = Presentation()
print(presentation.present(name: "Vlad", age: 18, country: "Belarus"))
