import UIKit

// Properties observers
struct Person {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }
        
        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor = Person(clothes: "T-shirts")
taylor.clothes = "short skirts"

// Computed properties
struct Persons {
    var age: Int
    
    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = Persons(age: 25)
print(fan.ageInDogYears)

// Static properties and methods
struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"
    
    var name: String
    var age: Int
}

TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)

// Access control
class TaylorFans {
    private var name: String?
}

// Closures
let vw = UIView()

UIView.animate(withDuration: 0.5, animations: {
    vw.alpha = 0
})

// Trailing closures
let vws = UIView()

UIView.animate(withDuration: 0.5) {
    vws.alpha = 0
}
