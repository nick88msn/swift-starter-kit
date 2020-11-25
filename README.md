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
    var age: Int = 32
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