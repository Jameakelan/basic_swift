//: [Previous](@previous)

/// Ref:
/// [1] https://developer.apple.com/documentation/swift/optional
/// [2] https://cocoacasts.com/five-common-questions-about-swift
/// [3] https://www.hackingwithswift.com/sixty/10/6/nil-coalescing
///

import Foundation

/// Optional Type indicate a value might present or present
/// A type that represents either a wrapped value or the absence of a value.

//: [Next](@next)


var number: Int? // nil

number = 10
print(number) // Optional(10)

// number + 5  ** Error
/// value of optional type 'Int?' must be unwrapped to a value of type 'Int'


if number != nil {
    /// force-unwrap using '!'
    print(number! + 5) // 15
}

/// If clause will work when number not nil
if let unwrappedNumber = number {
    print(unwrappedNumber + 5) // 15
}

if let number {
    print(number + 5) // 15
}

// print(number) // Still, nil because it is outside If clause

var number2: Int?

if let unwrappedNumber = number2 {
    print(unwrappedNumber + 5)
} else {
    print("number2 is nil. be carefully") // number2 is nil. be carefully
}


func mutipleByTwo (_ num: Int?) -> Int {
    if let num {
        return num * 2
    } else {
        return 0
    }
}

mutipleByTwo(nil) // 0
mutipleByTwo(2)  // 4

func mutiple(_ num1: Int?, _ num2: Int?) -> Int {
    
    /// Ref: https://www.programiz.com/swift-programming/guard-statement
    /// If condition is true guard not return 0
    /// If condition is false guard return 0. For instance, num1 or num2 is nil
    guard let num1, let num2 else {
       return 0
    }
    
    return num1 * num2 // unwrapped variable
}

mutiple(2, 3) // 6
mutiple(nil, nil) // 0


///
///enum Optional<T> {
///  case None
///  case Some(T)
///}

var code: String?

switch code {
case .none:
    print("Code has no value") // Code has no value
    break
case let .some(code):
    print("This a code \(code)")
    break
}


var code2: String? = "CODE"
/// Can compare a value with Optional Type
if code2 == "CODE" {
    print(code2) // Optional("CODE")
}

/// Both are the same but recommend this
if code2 == .some("CODE") {
    print(code2) // Optional("CODE")
}


struct Person {
    let name: String?
    let age: Int?
    
    init(name: String? ,age: Int?) {
        self.name = name
        self.age = age
    }
}

var person = Person(
    name: "Captain",
    age: nil
)

print(person.name) // Optional("Captain")

print(person.age ?? 0) // 0

print(person.name?.uppercased()) // Optional("CAPTAIN")

var person2 = Person(
    name: nil,
    age: nil
)

print(person2.name?.uppercased()) // nil
