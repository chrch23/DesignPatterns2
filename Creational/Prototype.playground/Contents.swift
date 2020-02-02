import Foundation

class Hero {
    var hp = 1980
    var mana = 720
    
    func clone() -> Hero {
        return Hero()
    }
}

let hero = Hero()
let clone3 = hero
let clone4 = hero

clone3.hp = 0

clone3.hp
clone4.hp

let phantopLancer = Hero()
let clone1 = phantopLancer.clone()
let clone2 = phantopLancer.clone()

clone1.hp = 0

clone1.hp
clone2.hp
