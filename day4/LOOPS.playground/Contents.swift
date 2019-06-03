import UIKit

// For Loops
let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) in apples music")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

// While Loops
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not here I come")

// Repeat loops
repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not here I come")

while false {
    print("this is false")
}

repeat {
    print("this is false")
} while false


// Exiting Loops
var countDown = 10

while countDown >= 0 {
    print("Count down \(countDown)")
    
    if countDown == 4 {
        print("Please take off now, i'm bored")
        break
    }
    countDown -= 1
}

// Exiting Multiple Loops
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// Skipping items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}

// Infinite Loops
var counters = 0

while true {
    print(" ")
    counters += 1
    
    if counters == 273 {
        break
    }
}

// You’ve made it to the end of the fourth part of this series, so let’s summarize:
//
// 1. Loops let us repeat code until a condition is false.
// 2. The most common loop is for, which assigns each item inside the loop to a temporary constant.
// 3. If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
// 4. There are while loops, which you provide with an explicit condition to check.
// 5. Although they are similar to while loops, repeat loops always run the body of their loop at least once.
// 6. You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
// 7. You can skip items in a loop using continue.
// 8. Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!
