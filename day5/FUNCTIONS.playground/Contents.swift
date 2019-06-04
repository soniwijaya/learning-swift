import UIKit

// Function
func printHelp() {
    let message = """
        Welcome to my app

        run this app
    """
    print(message)
}
printHelp()

// Accepting parameters
func square(number: Int) {
    print(number * number)
}
square(number: 8)

// Returning values
func square2(number: Int) -> Int {
    return number * number
}
let result = square2(number: 8)
print(result)

// Parameter Labels
func sayHello(to name: String) {
    print("Hello, \(name)")
}
sayHello(to: "Taylor")

// Omitting parameter labels
func greet(_ person: String) {
    print("Hello, \(person)")
}
greet("Taylor")

// Default Parameters
func hay(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)")
    } else {
        print("Oh no its \(person) again")
    }
}
hay("Taylor")
hay("Taylor", nicely: false)

// Variadic function
func calculate(numbers: Int...) {
    for number in numbers {
        print("number \(number) Number * Number \(number*number)")
    }
}
calculate(numbers: 1,2,3,4,5)

// Writing throwing function
enum PasswordError: Error {
    case obvious
}

// Writing throwing function
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

// Running throwing function
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use the password")
}

// inout parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}

var mynum = 10
doubleInPlace(number: &mynum)
print(mynum)

// You’ve made it to the end of the fifth part of this series, so let’s summarize:
//
// 1. Functions let us re-use code without repeating ourselves.
// 2. Functions can accept parameters – just tell Swift the type of each parameter.
// 3. Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
// 4. You can use different names for parameters externally and internally, or omit the external name entirely.
// 5. Parameters can have default values, which helps you write less code when specific values are common.
// 6. Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
// 7. Functions can throw errors, but you must call them using try and handle errors using catch.
// 8. You can use inout to change variables inside a function, but it’s usually better to return a new value.
