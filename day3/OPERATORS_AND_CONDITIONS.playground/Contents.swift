import UIKit

// Arithmetic Operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

// Operator of overloading
let meaningLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna"
let action = fakers + "fake"

let firstHalf = ["John", "Smurft"]
let secondHalf = ["Clarke", "Simon"]

let beatles = firstHalf + secondHalf

// Compound assignment operators
var score = 95
score -= 5

var quote = "The rain in spain falls mainly on the "
quote += "Spaniards"

// Comparison Operators
firstScore == secondScore
firstScore != secondScore

firstScore > secondScore
firstScore <= secondScore

"Taylor" >= "Swift"

// Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces lucky!")
}
else if firstCard + secondCard  == 21 {
    print("Blackjack")
} else {
    print("Regular card")
}

// Combining conditions
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
}

// The ternary operators
print(firstCard == secondCard ? "Cards are same" : "Cards are different")

// Switch statements
let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("wear sunscreen")
    // if you want execution to continue on to the next case, use the fallthrough keyword like this:
    fallthrough
default:
    print("Enjoy your day")
}

// Range operators
let value = 85

switch value {
case 0..<50: // For example, the range 1..<5 contains the numbers 1, 2, 3, and 4, whereas the range 1...5 contains the numbers 1, 2, 3, 4, and 5.
    print("You fail badly")
case 50..<85:
    print("You did Ok")
default:
    print("You did great")
}


// You’ve made it to the end of the third part of this series, so let’s summarize:
//
// 1. Swift has operators for doing arithmetic and for comparison; they mostly work like you already know.
// 2. There are compound variants of arithmetic operators that modify their variables in place: +=, -=, and so on.
// 3. You can use if, else, and else if to run code based on the result of a condition.
// 4. Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn’t recommend using it yourself.
// 5. If you have multiple conditions using the same value, it’s often clearer to use switch instead.
// 6. You can make ranges using ..< and ... depending on whether the last number should be excluded or included.
