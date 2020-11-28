# Swift from scratch

## Comments
- Single line comment is made with //
- Multi line comments should go inside /* */

## Variables
- Variables are initialized with var
- ```Swift
  var str = 'Hello World'
  ```
- Constants are initialized with let
- ```Swift
  let key = '123456789'
  ```

## Print
- To print simply use the print function
- To print a variable:
  - ```Swift
    print(str)
    print(`str` + "\n" + `key`)
    ```
- To embed code inside a print function
  - ```Swift
    print("Max int64 size is: \(Int64.Max)")
    ``` 

## Datatypes
- To add a datatype to our variables:
  - ```Swift
    var name: String = "Nicola"
    var age : Int = 32
    print(name,age)
    ```

## Float and Doubles
- same as string or int
- ```Swift
    // float and doubles datatypes
    var pi: Float = 3.1425
    var pi2: Float = 3.1521
    var pi3: Double = 3.12319287391729

    if pi > pi2{
        print("OK")
    } else{
        print("NO!")
    }
    ```

## Booleans
```Swift
// booleans
let status: Bool = true

if status{
    print("Status test is passed")
} else {
    print("Something is wrong here.")
}
```

## Other Datatypes
- Int8, Int16, Int32, Int64 
- UInt8, UInt16, Uint32, UInt64
- Float80
- UUID 
- etc.

## Math Functions
```Swift
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
// also trigonometry functions such as sin, cos, tan, asin, acos, atan, sinh, cosh, tanh
```  
## Conditionals
- if / else if / else
- switch / case
```Swift
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
```

## Loops
```Swift
// for loops

// array
let list:Array = [1,2,3,4]

for item in list {
    print(item)
}

// range
for i in 1...5 {
    print(i)
}

// range with condition
for i in 1...10 where i % 2 == 0 {
    print("\(i) is a even number. ")
}

// range with stride
for i in stride(from: 10, through: 2, by: -2){
    print(i)
}

// foreach
list.forEach{ print($0) }

// While loops
var i : Int = 1

while i < 10 {
    if i % 2 == 0 {
        print(i)
        i += 1
        continue
    } else {
        if i == 7 {
            break
        } else {
            i += 1
            continue
        }
    }
}

// repeat while
let magicNumber: Int = Int.random(in: 0...10)
var numberInterval: Array = [0,1,2,3,4,5,6,7,8,9,10]
var guess: Int = 0
var count: Int = 0

repeat {
    print("Current guess: \(guess)")
    // try not to repeat the same random number inside our interval
    if let index: Int = numberInterval.firstIndex(of: guess){
        numberInterval.remove(at: index)
    }
    // guess another number ! means we are safe the interval is not empty
    guess = numberInterval.randomElement()!
    count += 1
} while (magicNumber != guess)

print("You have found the magic number: \(guess) in \(count) guesses")

// Iterators
var i1 = (1...5).makeIterator()

while let i = i1.next(){
    print(i)
}
```

## Functions
```Swift
// functions
func getSum(x: Int, y: Int) -> Int {
    return x + y
}

print("Sum is equal to: ",getSum(x: 2, y: 2)) 

// if we don't want to add the variable name when call the function add _ 

func getSumNotExplicit(_ x: Int,_ y: Int) -> Int {
    return x + y
}

print("Sum is equal to: ",getSumNotExplicit(2, 2))

// function with no arguments and that returns nothing
func printTwo() -> Void {
    print("Two is equal to 2")
}

printTwo()

/* function overload
        to overload a function means we are going to have two function with the same name
        in this case we can do it as long as the function parameters and return types are different
*/
func getSum(x: Double, y: Double) -> Double {
    print("This is the overload function")
    return x + y
}

print("Sum is equal to: \(getSum(x: 5, y: 5))")
print("Sum is equal to: \(getSum(x: 5.0, y: 5.0))")

/*  Different from other programming languages is that in swift we cannot change the input parameter since it is initialize as a constant. So, something like:
        func modify(x: Int) -> Void { x = 0 }
    will throw an error since we are trying to modify an immutable variable.
    
    To work with the input variable create a new one and make a copy or initialize with a new value.
    In alternative we can use inout, but with inout

*/

func changeMe(_ x: inout Int) -> Void {
    x = 10
    print("X is equal to: \(x)")
}

var chn: Int = 5
changeMe(&chn)

// If we just want to modify the value inside the function we could reinitialize them like so
// also we can return multiple values with ease
func twoMult(num: Int) -> (x: Int, y: Int) {
    let x: Int = num * 2
    let y: Int = num * 3
    return (x,y)
}


let (x,y) = twoMult(num: 2)
print(x,y)

let mults = twoMult(num: 3)
print(mults.x,mults.y)

// what if we want to receive an unknown number of input value in our function
// ... is the swift version of *args

func multSums(_ argArray: Int ...) -> Int {
    var sum = 0
    for i in argArray{
        sum += i
    }
    return sum
}

print("Sum is equal to: \(multSums(1,2,3,4,5))")

// Recursion
// aka the act of a function of calling its self

func factorial(_ x:Int) -> Int{
    var sum: Int = 0
    if x == 1 {
        return 1
    } else {
        sum = x * factorial(x - 1)
        return sum
    }
}

print("Factorial of 4: \(factorial(4))")

// 1st sum = 4 * factorial(3) = 4 * 6 = 24
// 2nd sum = 3 * factorial(2) = 3 * 2
// 3rd sum = 2 * factorial(1) = 2 * 1
// 4th iteration => return 1

/*
 Assign function to value and handles them like in JS
*/

func multByTwo(_ x:Int) -> Int{
    return x * 2
}

var timesTwo = multByTwo

print("Two times two is equal to: \(timesTwo(2))")

// we can also pass a function into another function like in javscript

func runFunc(_ f:() -> ()) {
    f()
}

func print4() -> Void {
    print("4")
}

runFunc(print4)

// when these return actually something this construct is more clear
func doMath(_ f: (Int) -> Int, _ x:Int){
    print("Result is equal to: \(f(x))")
}

doMath(timesTwo, 2)

// Let's see how a function can return another one

func funcMaker(val:Int) -> (Int) -> Int {
    func addVals(num1: Int) -> Int {
        return num1 + val
    }
    return addVals
}

let sum = funcMaker(val: 2)
type(of: sum)
print("Two plus two 2+2= \(sum(2))")

// Closures
// A closure is a function that does not require a name or a function definition (Lambda function in python?)
// It is a very deep concept with many ramification so read carefully https://docs.swift.org/swift-book/LanguageGuide/Closures.html

var square: (Int) -> (Int) = { num in num * num }

print("Square 5 is equal to: \(square(5))")

// we can also reference any value outside of the closue
let numbers = [ 10, 20, 30, 15, 22, 44, 55, 100]

let sortedNumbers = numbers.sorted(by: { x , y in x < y })

print(numbers, sortedNumbers)

// we can iterate through an array withouth a for loop with map (as in Python!)
let squaredNumbers = sortedNumbers.map {
    (num: Int) -> String in "\(square(num))"
}

print(squaredNumbers)

```

## Ranges
- Ranges are usually called using from...to
- by default they range from the starting value to, including, the ending one.
- if we want to exclude the last number we should use from..<to
- we can use range directly inside for loop and if we want to loop in reverse mode we could just

```Swift
for i in (2..<20).reversed(){
    print(i)
}

// to check if a value is contained in a range
print("Check if five is in our range: \((5..<10).contains(5))")
```

## [Arrays](https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html)
- Swift provides three primary collection types, known as:
  - Arrays: ordered collections of values
  - Sets: unordered collections of unique values
  - Dictionaries: unordered collections of key-value associations
```Swift
/* Array
    Arrays needs to have all the same datatype inside.
*/

var arr1: Array<Int> = []
//alternatively
var arr2 = [Int]()

// check if an array is empty
arr1.isEmpty
arr2.isEmpty

arr1 == arr2

// add elements to an arrya
arr1.append(5)

// Check array length
print(arr1.count)

// Create an array with default values
var arr3 = [Int](repeating: 0, count: 10)

// Create a new array by adding one to the other
var arr4 = arr1 + arr3
print(arr4.count)

// Creating an Array with an Array Literal
var shoppingList : [String] = ["A","B","C","D"]
print(shoppingList.count,shoppingList.contains("A"))

var shorterShoppingList = ["A","B"]

// Accessing Array values
if shorterShoppingList.isEmpty{
    print("Shopping list is empy, do you want to add some items?")
    shorterShoppingList.append("C")
    shorterShoppingList += ["D", "E"]
} else {
    print("You have exactly \(shorterShoppingList.count) items in your cart.")
    print("Your first item is \(shorterShoppingList[0])")
}

// sorting an array
shorterShoppingList.sort()
shorterShoppingList.sort{$0 < $1}

// remove insert append
print(shorterShoppingList)
// Using subscript syntax to change an existing value at an existing index
shorterShoppingList[0] = "Z"
shorterShoppingList += ["D", "E"]
shorterShoppingList[1...3] = ["J","K","L"]
shorterShoppingList.remove(at: 0)
shorterShoppingList.insert("H", at: 0)
print(shorterShoppingList)

// nested array
let nested = [["A","B","C"],["D","E","F"],["G","H","I"]]
print(nested[1][0])
var flattenArray = nested.joined()

//filter an array
print(flattenArray.filter{$0.contains("A")}.count)
print(flattenArray.filter{$0 <= "C"})

// check if all elements satisfy a condition
print(flattenArray.allSatisfy({$0 > "A"}))

// iterating over and array
for item in shorterShoppingList{
    print(item)
}

// iterate and manipulate
let isItJ = shorterShoppingList.map {
    (item: String) -> Bool in item == "J"
}
print(isItJ)

// create a new array modifying a previous one
var arrNew = flattenArray.map{ "0_" + $0 }
print(arrNew)

// get the total sum of all the elements in an array
let numList = [0,1,2,3,4,5,6,7,8,9]
let totalSum = numList.reduce(0, +)
let totalSumClosures = numList.reduce(0){ $0 + $1 }
print(totalSumClosures)

// iterate and manage index
for (index, value) in shorterShoppingList.enumerated(){
    if index % 2 == 0{
        print("\(index): " + `value`)
    }
}

// DICTIONARIES
let dic = [Int: String]()
type(of: dic)
dic.count   //this is an empty dictionary

// Creating a Dictionary with a Dictionary Literal
var airports : [String:String] = ["FCO": "Fiumicino", "CIA": "Ciampino"]
airports.count
airports.isEmpty

// add items using subscript syntax
airports["HTW"] = "Heatrow"
airports["FCO"] = "Leonardo da Vinci"
airports.updateValue("London Heatrow", forKey: "HTW")
print(airports)

// delete an instance using nil of the removeValue method
airports["HTW"] = nil

if airports["HTW"] != nil{
    print("The airport is in the dictionary")
} else {
    print("The airport is not in the dictionary")
}

if let oldValue = airports.removeValue(forKey: "CIA"){
    print("Removed \(oldValue)")
} else {
    print("The airport was already removed")
}

// Iterating over a dictionary
for (key, value) in airports{
    print(key, value)
}

for key in airports.keys{
    print(key)
}

for values in airports.values{
    print(values)
}

// To retrieve a list of all keys or values of the dictionery
let airportCodes = [String](airports.keys)
let airportNames = [String](airports.values)

```

## [Strings](https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html)

```Swift
// STRINGS

var str = "Strings contains text and escape characters like \" to escape double quotes or \' to escape singole quote. Also we can have \n to go to a new line or \t to tabulate.\nTo escape backslashed use \\"

print(str)

// Multiline String Literas

var multiStr = """

To add a multi line string you can use the triple backslash.
    This will show as an indentation. Adding a blank line before and after gives you an hline

"""

print(multiStr)

// You can access the individual Character values for a String by iterating over the string with a for-in loop:

var word = [Character]()
// decompose the string and append to a list of characters
for character in "Dog🐶"{
    word.append(character)
}
print(word)

// concatenate the list into a string
let concatString = String(word)

// Counting Characters
let uniWord = "Coffee☕️"
print("The word \(uniWord) has \(uniWord.count) characters")

// Accessing and Modifying a String
// We cannot use integers as index for swift memory management stuff
// Each String value has an associated index type, String.Index, which corresponds to the position of each Character in the string.

var sentence = "This is a lorem ipsum not dicit😎"

print(sentence[sentence.startIndex])
type(of: sentence.endIndex)
let index = sentence.index(before: sentence.endIndex)
print(sentence[index])
let ind = sentence.index(sentence.startIndex, offsetBy: 5)
print(sentence[ind])

// iterate over a string
for i in sentence.indices{
    print("\(i): \(sentence[i])")
}

// Insert and remove inside a string

// insert a single character at a specific index
sentence.insert("!", at: sentence.endIndex)
print(sentence)

// insert a substring inside a range
sentence.insert(contentsOf: "\nSo we are taking a break🏝", at: sentence.endIndex)
print(sentence)

// remove a single character at a specific index
sentence.remove(at: sentence.index(before: sentence.endIndex))

// remove a substring
sentence.removeSubrange(sentence.startIndex..<sentence.endIndex)
print(sentence.count)

/*
 Substrings
 When you get a substring from a string—for example, using a subscript or a method like prefix(_:)—the result is an instance of Substring, not another string. Substrings in Swift have most of the same methods as strings, which means you can work with substrings the same way you work with strings. However, unlike strings, you use substrings for only a short amount of time while performing actions on a string
*/

let welcomeMessage = "Goood Morning 🖥, Welcome to beach park🏖"
let secondPart = welcomeMessage.firstIndex(of: ",") ?? welcomeMessage.endIndex
let welcome = welcomeMessage.startIndex..<index
let subString = welcomeMessage[secondPart ..< welcomeMessage.endIndex]
print(subString, type(of: subString))
//print(welcomeMessage[welcome])

let newString = String(subString)
print(newString, type(of: newString))

// Comparing Strings
// Swift provides three ways to compare textual values: string and character equality, prefix equality, and suffix equality.

let quote = "Time is limitless!"
let sameQuote = "Time is limitless!"

if quote == sameQuote{
    print("Two strings are exactly the same!")
}

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1Counter = 0
var mansionCounter = 0

for scene in romeoAndJuliet{
    if scene.hasPrefix("Act 1"){
        act1Counter += 1
    }
    if scene.hasSuffix("mansion"){
        mansionCounter += 1
    }
}

print("Act 1 has \(act1Counter) scene(s)🎭")
print("\(act1Counter) scene(s) 🎭 are set in the mansion")

// filter inside a string
print("Derek".filter{!"aeiou".contains( $0 )}) //remove the vowel

// split a string into a list using a condition
print("Lorem Ipsum Generator 🖥".split{ $0 == " " })    // with closures
print("Luke Smith Arberola Santos".split(separator: " "))

```

## Tuples
- Tuples group multiple values into a single compound value. The values within a tuple can be of any type and don’t have to be of the same type as each other.

```Swift
let httpStatus: (String, Int) = ("Page not found", 404)

// decompose a tuple into variables
let (status, code) = httpStatus
print(status)

// ignore other variables with _
let someLongTuple = ("Welcome a board", "AZ23145", 12, 155, 100)
let (welcomingMessage, flightNumber, _, _, _) = someLongTuple
print(welcomingMessage)

// or access using the index number
let wel = someLongTuple.0
print(wel)

// label  individual items in a tuple to access easier
let keyTuple = (status: "Page not found", code: 404)
print(keyTuple.status)
```

## Sets
- Tuples group multiple values into a single compound value. The values within a tuple can be of any type and don’t have to be of the same type as each other.
  
```Swift
let httpStatus: (String, Int) = ("Page not found", 404)

// decompose a tuple into variables
let (status, code) = httpStatus
print(status)

// ignore other variables with _
let someLongTuple = ("Welcome a board", "AZ23145", 12, 155, 100)
let (welcomingMessage, flightNumber, _, _, _) = someLongTuple
print(welcomingMessage)

// or access using the index number
let wel = someLongTuple.0
print(wel)

// label  individual items in a tuple to access easier
let keyTuple = (status: "Page not found", code: 404)
print(keyTuple.status)

// Sets
// unordered lists of unique elements

//create an empty set
var myFirstSet = Set<Int>()
myFirstSet.insert(1)
myFirstSet.count

var setFromList: Set<Int> = [0,1,2,3,4,5,0,1,2,3,4,5]
print(setFromList)

// remove duplicates from list like in python?
var dupList = [0,1,2,3,4,5,0,1,2,3,4,5]
var noDuplicates = Set(dupList.map{ $0 })
print(dupList.count, noDuplicates.count)
type(of: Array(noDuplicates))

// sets methods (not different from array methods)
print(noDuplicates.contains(2))
print(noDuplicates.remove(3)!)
print(noDuplicates.isEmpty)

```

## Enumeration
- An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your code.

```Swift
enum Options {
    case option1(Int, Int, Int)
    case option2(String, String, Int)
    case option3(Bool)
}

var currentOption = Options.option1(20, 30, 10)

currentOption = .option3(false)

switch currentOption {
case .option1(let parameter1, let parameter2, let parameter3):
    print("You\'ve selected option 1 with the following parameters \(parameter1):\(parameter2):\(parameter3)")
case .option2(let name, let address, let price):
    print("Hi \(name), your order will be shipped to \(address) for \(price) extra.")
case .option3(let selection):
    print("You have selected \(selection) to pick the item at our delivery point.")
}

// Raw Values
enum Drinks: Character {
    case water = "💦"
    case coffee = "☕️"
    case wine = "🍷"
}

print(Drinks.wine.rawValue)
```

## Optionals
- You use optionals in situations where a value may be absent. An optional represents two possibilities: Either there is a value, and you can unwrap the optional to access that value, or there isn’t a value at all.

# Error Handling
- In contrast to optionals, which can use the presence or absence of a value to communicate success or failure of a function, error handling allows you to determine the underlying cause of failure, and, if necessary, propagate the error to another part of your program.

```Swift

// Error Handling
enum ErrorsType: Error {
    case error1
    case error2
    case error3
}

func makeAnError(num: Int) throws -> Error {
    if num > 0 {
        throw ErrorsType.error1
    } else if num % 2 == 0 {
        throw ErrorsType.error2
    } else {
        throw ErrorsType.error3
    }
}

do {
    try makeAnError(num: -3)
} catch ErrorsType.error1 {
    print("You\'ve raised an error")
} catch ErrorsType.error3 {
    print("You\'ve raised another error")
} catch ErrorsType.error2 {
    print("You\'ve raised another one")
}

```

## Struct
- Structures and classes are general-purpose, flexible constructs that become the building blocks of your program’s code. You define properties and methods to add functionality to your structures and classes using the same syntax you use to define constants, variables, and functions.

```Swift
struct Rectangle {
    var height = 0.0
    var width = 0.0
    func area() -> Double {
        let area = width * height
        return area
    }
}

let rectangle = Rectangle(height: 2.0, width: 3.0)
type(of: rectangle)
print("Rectangle area: \(rectangle.area())\nRectangle width: \(rectangle.width)\nRectangle height: \(rectangle.height)")
```
- the main difference between a struct and a class in swift is the ability of inherit class property from a class to another, aka class inheritance.


## Classes, Protocols, Override and Polymorphism
```Swift
// Classes

class Warrior {
    var name : String = "Warrior"
    var health : Int = 100
    var maxAttack: Int = 10
    var maxBlock: Int = 10

    init(_ name:String, _ health: Int, _ maxAttack: Int, _ maxBlock: Int){
        self.name = name
        self.health = health
        self.maxAttack = maxAttack
        self.maxBlock = maxBlock
    }
    
    func attack() -> Int {
        return Int.random(in: 1...self.maxAttack)
    }
    
    func block() -> Int {
        return Int.random(in: 1...self.maxBlock )
    }
}

class Battle {
    func startFight(_ warrior1: Warrior, _ warrior2: Warrior){
        while true {
            if(Battle.getAttackResult(warrior1, warrior2) == "Game Over"){
                print("Game Over")
                break
            }
            if(Battle.getAttackResult(warrior2, warrior1) == "Game Over"){
                print("Game Over")
                break
            }
        }
    }
    
    // static function is a function that does not need to access self
    static func getAttackResult(_ warriorA: Warrior, _ warriorB: Warrior) -> String {
        // get the value of attack - block accessing the function of the two objects
        let warrAAttAmount = warriorA.attack()
        let warrBBlockAmount = warriorB.block()
        // let's calculate the amount of damage that B received from A
        var dmg2B = warrAAttAmount - warrBBlockAmount
        dmg2B = dmg2B < 0 ? 0 : dmg2B
        warriorB.health -= dmg2B
        print("Warrior \(warriorA.name) attacks \(warriorB.name) and cause \(dmg2B) damages")
        print("\(warriorB.name) is down to \(warriorB.health)")
        if warriorB.health <= 0 {
            print("\(warriorB.name) is dead. \(warriorA.name) wins!")
            return "Game Over"
        } else {
            return "Fight Again"
        }
    }
}

// Protocols
// A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements. Any type that satisfies the requirements of a protocol is said to conform to that protocol.

protocol Teleport {
    func teleport() -> String
}

class CanTeleport: Teleport {
    func teleport() -> String {
        "Teleported away"
    }
}

class CantTeleport: Teleport {
    func teleport() -> String {
        return "Teleport failed"
    }
}

class MagicWarrior: Warrior {
    var teleportChance:Int = 0
    var teleportType = CanTeleport()
    
    init(_ name: String, _ health: Int, _ maxAttack: Int, _ maxBlock: Int, _ teleportChance: Int) {
        super.init(name, health, maxAttack, maxBlock)
        self.teleportChance = teleportChance
    }
    
    override func block() -> Int {
        let dodgeChance = Int.random(in: 1...100)
        if dodgeChance < self.teleportChance {
            print("\(self.name) teleported and dodged the attack!")
            return 100
        } else {
            return super.block()
        }
    }
}


let thor = Warrior("Thor", 100, 40, 20)
let loki = MagicWarrior("Loki", 100, 30, 30, 40)

let battle = Battle()
battle.startFight(thor, loki)

```

## Extensions
- Let us add functionalities to existing class, structs, data types, protocols etc.

``` Swift
// Extensions

extension Double {
    var km: Double {
        return self * 1000
    }
    var m: Double{
        return self
    }
    var cm: Double{
        return self / 100
    }
    var mm: Double{
        return self / 1000
    }
}

let measure: Double = 1.0.km + 850.0.m + 1200.0.mm
print(measure)

```