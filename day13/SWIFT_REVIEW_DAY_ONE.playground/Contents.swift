import UIKit

// Review Variables and constants
var str = "Hello, playground"
str = "test"
let result = "testing"

// Review Types of Data
var name: String
name = "Tim McGraw"

var age: Int
age = 25

var latitude: Double
latitude = 36.166667

var longitude: Float
longitude = -86.783333

// Review Operators
var a = 1.1
var b = 2.2
var c = a + b

c > 3
c >= 3
c > 4
c < 4

// Review String Interpolation
"Your name is \(name), your age is \(age), and your latitude is \(latitude)"

// Review Arrays
var song: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]

var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
type(of: songs)

// Review Dictionaries
var person = [
    "first": "Taylor",
    "middle": "Alison",
    "last": "Swift",
    "month": "December",
    "website": "taylorswift.com"
]

person["middle"]
person["month"]

// Review Conditional statements
var action: String
var stayOutTooLate = true
var nothingInBrain = true

if stayOutTooLate && nothingInBrain {
    action = "cruise"
}

// Review Loops
var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0 ..< people.count {
    var str = "\(people[i]) gonna"
    
    for _ in 1 ... 5 {
        str += " \(actions[i])"
    }
    
    print(str)
}

// Review Switch case
let studioAlbums = 5

switch studioAlbums {
case 0...1:
    print("You're just starting out")
    
case 2...3:
    print("You're a rising star")
    
case 4...5:
    print("You're world famous!")
    
default:
    print("Have you done something new?")
}
