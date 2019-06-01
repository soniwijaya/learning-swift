import UIKit

// Arrays
// If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:
let john = "John"
let murphy = "Murphy"
let bellamy = "Bellamy"
let clarke = "Clarke"

let result = [john, murphy, bellamy, clarke]
result[0]

// Sets
// If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:
let colors = Set(["red", "blue", "green"])
let colors2 = Set(["red", "blue", "green", "red", "green"])


// Tuples
// If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:
let name = (first: "Taylor", last: "Swift")
name.0
name.last

// Dictionaries
let height = [
    "Taylor Swift": 1.78,
    "John Doe": 1.65
]
height["Taylor Swift"]

// Dictionary default values
let favoriteIceCream = [
    "Clarke": "Choco",
    "Emori": "Chips",
    "Echo": "Vanilla"
]
favoriteIceCream["Clarke"]
favoriteIceCream["Monty", default: "Empty"]

// Creating Empty Collections
var team = [String: String]()
team["Paul"] = "red"

var results = [Int]()
var words = Set<String>()
var numbers = Set<Int>()

var score = Dictionary<String, Int>()
var resultArr = Array<Int>()

// Enumerations
// For example, if you wanted to write some code to represent the success or failure of some work you were doing, you could represent that as strings. But what happens if someone accidentally uses different naming?
let result1 = "failure"
let result2 = "failed"
let result3 = "fail"

// With enums we can define a Result type that can be either success or failure, like this:
enum Result {
    case success
    case failure
}

let result4 = Result.failure

// Enum Assosiated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let activityResult = Activity.running(destination: "Run Away")

// Enum Raw Values
enum Planet: Int {
    case mercury = 1 // If you want, you can assign one or more cases a specific value, and Swift will generate the rest. It’s not very natural for us to think of Earth as the second planet, so you could write this: Now Swift will assign 1 to mercury and count upwards from there, meaning that earth is now the third planet.
    case earth
    case venus
}
let earth = Planet(rawValue: 3)

// You’ve made it to the end of the second part of this series, so let’s summarize:
// 1. Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.
// 2. Arrays store items in the order you add them, and you access them using numerical positions.
// 3. Sets store items without any order, so you can’t access them using numerical positions.
// 4. Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.
// 5. Dictionaries store items according to a key, and you can read items using those keys.
// 6. Enums are a way of grouping related values so you can use them without spelling mistakes.
// 7. You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case
