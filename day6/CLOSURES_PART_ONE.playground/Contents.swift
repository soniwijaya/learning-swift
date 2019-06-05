import UIKit

// creating basic closures
let driving = {
    print("I'm driving in my car")
}
driving()

// Accepting parameters in a closure
let drive = { (location: String) in
    print("Your location is \(location)")
}

drive("London")

// Returning values from a closures
let drivingWithReturn = { (location: String) -> String in
    return "Your location is \(location)"
}

let message = drivingWithReturn("America")
print(message)

// Closures as parameters
// let driving = {
//    print("I'm driving in my car")
// }
func travel(action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I arrived")
}
travel(action: driving)

// Trailing closure syntax
travel { // In fact, because there aren’t any other parameters, we can eliminate the parentheses () entirely:
    print("I'm driving in my car")
}
