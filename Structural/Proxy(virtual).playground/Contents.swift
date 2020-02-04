import Foundation

class User {
    let name = "Admin"
}

protocol Connection {
    func connect(user: User)
}

class Server: Connection {
    func connect(user: User) {
        print("\(user.name) connected")
    }
}

class Proxy: Connection {
    lazy private var server = Server()
    
    func connect(user: User) {
        server.connect(user: user)
    }
}

let user = User()
let proxy = Proxy()
proxy.connect(user: user)
