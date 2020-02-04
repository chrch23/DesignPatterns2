import Foundation

protocol Tree {
    func add(item: Tree)
    func info()
    var lvl: Int { get }
}

//branch
class Branch: Tree {
    var lvl: Int
    private var _branches = [Tree]()
    
    func add(item: Tree) {
        _branches.append(item)
    }
    
    func info() {
        var space = ""
        for _ in 1...lvl {
            space += "-"
        }
        print(space + lvl.description + " level branch")
        for branch in _branches {
            branch.info()
        }
    }
    
    init(lvl: Int) {
        self.lvl = lvl
    }
}

//leaf
class Leaf: Tree {
    var lvl: Int
    
    func add(item: Tree) {
        print("Error. Can't add.")
    }
    
    func info() {
        var space = ""
        for _ in 1...lvl {
            space += "-"
        }
        print(space + lvl.description + " level leaf")
    }
    
    init(lvl: Int) {
        self.lvl = lvl
    }
}

let mainBranch = Branch(lvl: 1)
let secondBranch = Branch(lvl: 2)
let thirdBranch = Branch(lvl: 3)
let leaf = Leaf(lvl: 4)

mainBranch.add(item: secondBranch)
secondBranch.add(item: thirdBranch)
thirdBranch.add(item: leaf)

mainBranch.info()

leaf.add(item: leaf)
