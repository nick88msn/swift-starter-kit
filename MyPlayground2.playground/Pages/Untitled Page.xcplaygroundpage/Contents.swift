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
