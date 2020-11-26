import Cocoa

//variables
var str = "Hello, playground"   // mutable variable
let key = "1234576869908120398" // immutable variable (costant)

// print function
print(`str` + "\n" + `key`)

// datatypes
var name: String = "Nicola"
var age: Int = 32
print(name,age)

// embed code inside a print function
print("Max size for an int64 is: \(Int64.max)")

// booleans
let status: Bool = true

if status{
    print("Status test is passed")
} else {
    print("Something is wrong here.")
}

// character
let grade: Character = "A"
print(grade)

// casting datatypes
var score: Float = 5.6
print("Your score is: \(Int(roundf(score)))")   //rounded float to int
 
// Other datatypes
// Int8, Int16, Int32, Int64, UInt8, UInt16, Uint32, UInt64, Float80

// Math functions
print("5+4=\(5 + 4)")
print("5*4=\(5 * 4)")
print("5/4=\(5.0 / 4.0)")
print("5%4=\(5 % 4)")

// increment and decrement functions
var integer: Int = 0
integer+=1
integer*=2
integer-=1

// random number
var rand: Int = Int.random(in: 1...20)
if rand < 5 {
    print("Random is less than five: \(rand)")
} else {
    print("Random is more than five: \(rand)")
}

var frand: Double = Double.random(in: 1...30)

// other math functions
print("Abs of random: \(abs(frand))")
print("Floor of random: \(floor(frand))")
print("Ceil of random: \(ceil(frand))")
print("Round of random: \(round(frand))")
print("Max(4,5): \(max(4,5))")
print("Min(4,5): \(min(4,5))")
print("Five power two: \(pow(5, 2))")
print("Square root of 25: \(sqrt(25))")
print("Log: \(log(0.5125))")

// conditionals
var age2:Int = Int.random(in: 4...24)

print("Age: \(age2 )")

// if else statement
if age2 < 5 {
    print("Go to preschool")
} else if age2 >= 5 && age2 <= 6 {
    print("Go to kindergarten")
}  else if age2 > 6 && age2 < 18 {
    let grade:Int = age2 - 5
    print("Go to \(grade) grade")
} else {
    print("What are you doing here? Go to college 🏫")
}

// conditions && ||
var income:Double = 15000.0
var gpa:Double = 3.7
var getGrant: Bool = income < 18000 && gpa > 3

print("Get grant: \(getGrant)")
print("Get grant: \(!getGrant)")

// ternary operator
// same as javascript: condition ? value_if_true : value_if_false
var canDrive: Bool = age2 >= 16 ? true : false
print("Can he drive: \(canDrive)")

// switch statement
let ingredient: String = "Flour"

switch ingredient {
case "Sugar":
    print("Start making the cake")
case "Flour":
    print("Let's do some pasta")
default:
    print("get some water")
}

// switch statement with range conditions
let testScore: Int = Int.random(in: 0...100)

switch testScore {
case 93...100:
    print("Great result, you passed with \(testScore) out of 100.")
case 70...92:
    print("You can do better, you passed with \(testScore) out of 100.")
case 40...69:
    print("Sorry, you failed the exam with \(testScore) out of 100.")
default:
    print("Sorry, repeat the test next year.")
}
