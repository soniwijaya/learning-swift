import UIKit

// Using closures as parameters when they accept parameters
func travel(action: (String) -> Void) {
    print("I'm getting ready to go")
    action("London")
    print("I'm arrived")
}

travel() { (place: String) in
    print("I'm going to place called \(place)")
}

// Using closures as parameters when they return values
func travelReturn(action: (String) -> String) {
    print("I'm getting ready to go")
    let description = action("London")
    print(description)
    print("I'm arrived")
}

travelReturn() { (place: String) -> String in
    return "I'm going to place called \(place)"
}

// Shorthand parameter names
travelReturn { // or u can just use this "place in" and using "place" as parameter
    "I'm going to place called \($0)"
}

// Closures with multiple parameters
func travelMultiple(action: (String, Int) -> String) {
    print("I'm getting ready to go")
    let description = action("London", 60)
    print(description)
    print("I'm arrived")
}

travelMultiple {
    "I'm going to place \($0) at \($1) miles per hour"
}

// Returning closures from functions
func travelFunc() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travelFunc()
result("London")
// let result2 = travelFunc()("London")

// Capturing values
func travelCount() -> (String) -> Void {
    var counter = 1
    return {
        print(" \(counter). I'm going to \($0)")
        counter += 1
    }
}

let results = travelCount()
results("London")
results("London")
results("London")

// You’ve made it to the end of the sixth part of this series, so let’s summarize:
//
// 1. You can assign closures to variables, then call them later on.
// 2. Closures can accept parameters and return values, like regular functions.
// 3. You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
// 4. If the last parameter to your function is a closure, you can use trailing closure syntax.
// 5. Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
// 6. If you use external values inside your closures, they will be captured so the closure can refer to them later.
