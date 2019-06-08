import UIKit

// Initializers
struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating new users!")
    }
}

var user = User()
user.username = "Taylor"

// Referring to the current instance
struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

// Lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Persons {
    var name: String
    lazy var familyTree = FamilyTree() // If we add the lazy keyword to the familyTree property, then Swift will only create the FamilyTree struct when it’s first accessed:
    
    init(name: String) {
        self.name = name
    }
}

var ed = Persons(name: "Ed")
ed.familyTree // So, if you want to see the “Creating family tree!” message, you need to access the property at least once:

// Static properties and methods
struct Student {
    static var classSize = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let student = Student(name: "Ed")
let taylor = Student(name: "Taylor")
print(Student.classSize)

// Access Control
struct PersonId {
    // public so u can replace from outside
    private var id: String // Make private so u can't replace from outside
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My Social private number \(id)"
    }
}

let personId = PersonId(id: "12345")

// You’ve made it to the end of the seventh part of this series, so let’s summarize:
//
// 1. You can create your own types using structures, which can have their own properties and methods.
// 2. You can use stored properties or use computed properties to calculate values on the fly.
// 3. If you want to change a property inside a method, you must mark it as mutating.
// 4. Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.
// 5. Use the self constant to refer to the current instance of a struct inside a method.
// 6. The lazy keyword tells Swift to create properties only when they are first used.
// 7. You can share properties and methods across all instances of a struct using the static keyword.
// 8. Access control lets you restrict what code can use properties and methods.
