//
// Thank you: Ios Programming: The Big Nerd Ranch Guide 6th Edition
// more: https://www.swift.org/documentation


import UIKit

// must have initialize value
// complier will know type of data by initailize value
var name = "Name";

// a constant variable
// this call inferring types cuz complier infers data type of consName by type of name;
let consName = name;
type(of: consName);

// declare variable with data type
// this call specific types
// a variable must initilized value before use
var myName : String;

// initailize value
myName = "My name";

// Specific Types
// Examples
var nextYear : Int;
var bodyTemp : Float;
var basPet : Bool;


/// Collection Types:
///  - Array
///  - Dictionaries
///  - Sets

// Array<T>
// an array is an ordered collection of elements
// T is elements of standard type, structure or a class

var arrayOfInt : Array<Int>
var arrayOfIntShort : [Int]
arrayOfInt = [7,3,4,5,6]
arrayOfInt.sorted()


// Dictionary<T,T>
// Key, Value

var dicOfConntry : Dictionary<String, String>
dicOfConntry = ["TH" : "Thailand", "EN" : "England"]
print(dicOfConntry["TH"] ?? "") // Cuz it is optoinal

var dicShort : [String : Int]
dicShort = ["ID" : 1234]
print(dicShort["ID"] ?? 0)


// Set<T>
// it is similar with arrary by unordered
// There isn't shorthand syntax
var animalSet : Set<String>
animalSet = ["Cat", "Dog"]


/// Properties
// a property is a value associated with an instance of a type

// animalSet is a instance of Set Class
animalSet.isEmpty;

/// Instance Method
// an instance method is a function that is specific to a particular type and can be called on a instance of that type

// contains is a method of instance
if animalSet.contains("Cat") {
    print("Cat")
} else {
    print("There isn't cat")
}


/// Optionals
/// An optional lets you express the possibility that a variable may not store a value at all.

// reading contain either a Float or nil
var reading : Float?
var reading2 : Float?

reading = 9.8
reading2 = 4
// print(reading); // Optional(9.8)

// reading / 2 :Value of optional type 'Float?' must be unwrapped to a value of type 'Float'
// reading / 2

(reading ?? 1) / 2

// or

(reading!) / 2

// or

if let r = reading, let r2 = reading2 {
    print(r / r2)
} else {
    print("Nil")
}


/// Loops and String Interpolation
/// Control Flow statements
/// - if-else
/// - while
/// - for
/// - for-in
/// - repeat-while
/// - switch

// For-in

let range = 0...3
for i in range {
    print(i)
}

// Get value with index
for (i,v) in arrayOfInt.enumerated() {
    print(i,v)
}

// For-In
for (k,v) in dicShort {
    print("Key: \(k)", "Value: \(v)")
}

/// Enumerations and Switch Statement

enum PieType {
    case apple
    case cherry
    case pecan
}

let favoritePie = PieType.apple
let pieName : String

switch favoritePie {
case .apple:
    pieName = "Apple"
case .cherry:
    pieName = "Cherry"
case .pecan:
    pieName = "Pecan"
}

// Fallthrough
let macOSVersion: Int = 14
switch macOSVersion {
case 0...8:
    print("A big cat")
case 9:
    print("Mavericks")
case 10:
    print("Yosemite")
case 11:
    print("El Capitan")
case 12,14:
    print("Sierra")
default:
    print("Greetings, people of the future! What's new in 10.\(macOSVersion)?")
}

// Enum with raw value

enum animalType : Int {
    case warmBlooded = 0
    case coldBlooded = 1
    case withJointedLeds
    case WithoutLegs
}

print(animalType.warmBlooded.rawValue)

if let rawValue = animalType(rawValue: 0) {
    print("This is a rawValue : \(rawValue)")
}

/// Insert text into string
var aString = ""
aString.append("A String")


/// Function

func greeting(name : String) -> String {
    let hi = "Hi, your name is \(name)"
    return hi
}

greeting(name: "TH")

func findMaxMin(numbers: [Int]) -> (max: Int,min: Int) {
    var max = numbers[0]
    var min = numbers[0]
    
    for n in numbers[1..<numbers.count] {
        if n > max {
            max = n
        } else if n < min {
            min = n
        }
    }
    
    return (max,min)
}

var maxMin = findMaxMin(numbers: [3,-1,4,-2,50])
print("This is Max \(maxMin.max), This is Min \(maxMin.min)")
