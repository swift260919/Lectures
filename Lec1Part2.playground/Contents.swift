import UIKit

//functions in swift:

//function that take a paramater - > by default the parameters are Named


//Named parameters are paramaters that Must be named


//Named Param
func sayHello(name:String){
    print("Hello, \(name)")
}

//Usage:
sayHello(name: "Moshe")


//annonymous parameter
func sayHelloToName(_ name:String){
    sayHello(name: "Moshe")
}

//1) try to print hello ,  moshe
//2) try to use the function
func sayHello(to name:String){
    print("Hello, \(name)")
}

sayHello(to: "Moshe")


//very readable
let rect = CGRect(x: 100, y: 100, width: 100, height: 200)


func myRect(_ x:Double, _ y: Double, _ width:Double, _ height:Double){
    
}

//Much Less Readable!
myRect(10, 10, 11, 9)



//write a sum func (x, y) prints x+y
func sum(x:Int, y: Int) -> Int{
    return x + y
}


print(sum(x: 10, y: 20))


//func getGasPrices  -> return a tuple!


//func that returns a tuple
func getGasPrices()->(Double, Double, Double){
    return (6.2, 6.8, 7)
}


//Tuple De-Strcturing
let (octan95, octan98, diesel) = getGasPrices()
print(octan95)


//Write a func that takes 2 parameters: (firstName, lastName) -> The func will return the initials: Tuple(Charater, Character)

//use Tuple Destructuring


func initials(firstName:String, lastName:String)->(Character?, Character?){
    let f = firstName.first
    let l = lastName.first
    
    return (f, l)
}

let (first, last) = initials(firstName: "Moshe", lastName: "Doe")
//M D
print(first ?? "", last ?? "Empty")




//Which Exception is the the most common in the World?
//NullPointerException



//Optionals: Value may be nil or Has A Value
let str = "abc"
let f:Character? = str.first






//choice is not an Int!
var choice:Int? = nil
// does not compile: //print(choice + 1)

//if choice is not nil ->


//Optional Binding
if let choice = choice{
    //inside this block -> choice is Not Optional
    print(choice + 1)
}else{
    print("No choice")
}

let letters = "ABC"
let firstLetter = letters.first
//try to print the letter in a safe manner


//Explicitly unwrap the optionl:
print(firstLetter!) //if it's nil -> Crash

//nil coalescing operator
print(firstLetter ?? "No Char 4 u!")

//optional binding
if let firstLetter = firstLetter{
    print(firstLetter)
}







let num1 = "10"
let num2 = "20"

//try to convert num1 and num2 to Integers
//try to calculate their sum if they have a value

if let n1 = Int(num1), let n2 = Int(num2){
    print(n1 + n2)
}


//nil coalescing
let nn1 = Int(num1)
let nn2 = Int(num2)

//print the sum
print((nn1 ?? 0) + (nn2 ?? 0))















