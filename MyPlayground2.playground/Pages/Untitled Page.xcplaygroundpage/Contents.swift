import Cocoa

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

// TUPLES
// Tuples group multiple values into a single compound value. The values within a tuple can be of any type and don’t have to be of the same type as each other.

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

// Enumeration
enum Status: String {
    case orderReceived
    case elabOrder
    case shipPrep
    case shipped
    case completed
}

var orderStatus = Status.orderReceived
print(orderStatus, orderStatus.rawValue)
type(of: orderStatus )
orderStatus = .elabOrder
print(orderStatus)

//Matching Enumeration Values with a Switch Statement
switch orderStatus {
case .orderReceived:
    print("Send an email for the new order")
case .elabOrder:
    print("Added a new order to the stack")
default:
    print("Order not found")
}

// Iterating over Enumeration Cases
enum Beverages: CaseIterable {
    case coffee, tea, water
}

let cases = Beverages.allCases.count

print("Beverages available are \(cases)")

for drink in Beverages.allCases {
    switch drink {
    case .coffee:
        print("Coffee is coming ☕️")
    case .tea:
        print("Wait 5 minutes for a nice hot 🫖")
    default:
        print("While you wait you can get some 💦")
    }
}

// Associated values
//You can set a constant or variable to each case

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

// Optionals
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

type(of: convertedNumber)   //it's an optional int and not an int since the Int method may fail and return an optional

var answer : String?
type(of: answer)    // optional string with a nil value
answer == nil ? print("The value is null") : print("The value is not null")

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

// STRUCT
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
