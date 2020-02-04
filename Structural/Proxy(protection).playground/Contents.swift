import Foundation

class User {
    var name: String
    var password: String
    
    init(name: String, password: String) {
        self.name = name
        self.password = password
    }
}

protocol Connection {
    func connect(user: User)
}

class Server: Connection {
    func connect(user: User) {
        print("\(user.name) is connected")
    }
}

class Proxy: Connection {
    private var _server: Server!
    
    func connect(user: User) {
        guard _server != nil else {
            print("Please your check password before")
            return
        }
        _server.connect(user: user)
    }
    
    func check(user: User) {
        guard user.password == "123" else {
            "Wrong password"
            return
        }
        _server = Server()
        print("Now you can connect")
        
    }
}

let user = User(name: "Admin", password: "123")
let proxy = Proxy()
proxy.connect(user: user)
proxy.check(user: user)
proxy.connect(user: user)
