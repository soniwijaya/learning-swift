import UIKit

// Creating own your classes
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let puppy = Dog(name: "poppy", breed: "puddle")

// Class inheritance
class Poddle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poddle")
    }
}

// Overriding methods
// Child classes can replace parent methods with their own implementations – a process known as overriding.
class Wolf {
    func makeNoise() {
        print("Woof!")
    }
}

class Child: Wolf {
    override func makeNoise() {
        print("Yip")
    }
}

let wolf = Child()
wolf.makeNoise()

// Final Classes
// Swift gives us a final keyword just for this purpose: when you declare a class as being final, no other class can inherit from it. This means they can’t override your methods in order to change your behavior – they need to use your class the way it was written.
// Example :
// final class Dog

// Copying Objects
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerTwo = singer
singerTwo.name = "Justin Bieber"

print(singer.name)

// Deinitializers
class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("The name is no more \(name)")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

// Mutability
class Singers {
    var name = "Taylor Swift" //  if u wanna constant variable just change to let
}

let singers = Singers()
singers.name = "Ed Sheeran"
print(singers.name)

// You’ve made it to the end of the eighth part of this series, so let’s summarize:
//
// 1. Classes and structs are similar, in that they can both let you create your own types with properties and methods.
// 2. One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.
// 3. You can mark a class with the final keyword, which stops other classes from inheriting from it.
// 4. Method overriding lets a child class replace a method in its parent class with a new implementation.
// 5. When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other.
// 6. Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.
// 7. Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.
