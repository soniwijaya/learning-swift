import UIKit

// Protocols
protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

// Protocol inheritance
protocol Payable {
    func calculate() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation {}

// Extension
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

// Protocol extensions
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us: ")
        
        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

// protocol oriented programming
protocol Identify {
    var id: String { get set }
    func identify()
}

extension Identify {
    func identify() {
        print("My ID is \(id).")
    }
}

struct Users: Identify {
    var id: String
}

let twostraws = Users(id: "twostraws")
twostraws.identify()

// You’ve made it to the end of the ninth part of this series, so let’s summarize:
//
// 1. Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.
// 2. You can build protocols on top of other protocols, similar to classes.
// 3. Extensions let you add methods and computed properties to specific types such as Int.
// 4. Protocol extensions let you add methods and computed properties to protocols.
// 5. Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations.
