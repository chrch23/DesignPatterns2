import Foundation

class Singleton {
    var str = "Old"
    static var shared = Singleton()
    private init() {}
}

let one = Singleton.shared
let two = Singleton.shared

print(one.str)
print(two.str)

print("")
one.str = "New"

print(one.str)
print(two.str)
