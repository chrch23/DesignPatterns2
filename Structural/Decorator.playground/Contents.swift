import Foundation

protocol Shop {
    func getPrice() -> Int
    func getDescription() -> String
}

class Music: Shop {
    func getPrice() -> Int {
        return 0
    }
    
    func getDescription() -> String {
        return "You want to buy:"
    }
}

class Decorator: Shop {
    private let _shop: Shop
    
    required init(shop: Shop) {
        _shop = shop
    }
    
    func getPrice() -> Int {
        return _shop.getPrice()
    }
    
    func getDescription() -> String {
        return _shop.getDescription()
    }
}

class Guitar: Decorator {
    required init(shop: Shop) {
        super.init(shop: shop)
    }
    
    override func getPrice() -> Int {
        return super.getPrice() + 800
    }
    
    override func getDescription() -> String {
        return super.getDescription() + " guitar"
    }
}

class Piano: Decorator {
    required init(shop: Shop) {
        super.init(shop: shop)
    }
    
    override func getPrice() -> Int {
        return super.getPrice() + 2200
    }
    
    override func getDescription() -> String {
        return super.getDescription() + " piano"
    }
}

class Ukulele: Decorator {
    required init(shop: Shop) {
        super.init(shop: shop)
    }
    
    override func getPrice() -> Int {
        return super.getPrice() + 100
    }
    
    override func getDescription() -> String {
        return super.getDescription() + " ukulele"
    }
}

var musicShop: Shop = Music()
print(musicShop.getDescription())
print("Prize: \(musicShop.getPrice())\n")

musicShop = Ukulele(shop: musicShop)
musicShop = Ukulele(shop: musicShop)
musicShop = Piano(shop: musicShop)

print(musicShop.getDescription())
print("Prize: \(musicShop.getPrice())\n")
