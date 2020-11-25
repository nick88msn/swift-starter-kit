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

```  
