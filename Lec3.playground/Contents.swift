import UIKit

//basic swift types:
//Int, Double etc. String.
//Optionals -> if let, nil coallescing. todo: guard, explicitly unwraped optionals

//enums
//tuples



//Protocol is a list of requirements. most of the time we need to conform to a protocol to gain functionality

protocol Driver{
    //list of requirements:
    func drive()
    
    //computed is enough
    var lisenceID: String{get}
}












//structs
struct Person: Driver{
    func drive() {
        print("Driving")
    }
    
    var lisenceID: String
    
    
    //properties:
    var firstName: String
    var lastName: String
    
    //computed property
    var fullName:String{
    //String interploation - string that we can include expressions in
        return "\(firstName) \(lastName)"
    }
    
    //actions are for taking action
    
    //methods cant change property values unless declared as mutating
    func sayHello(){
        print("Hello")
    }
}

//strucs get a free init with all the parameters
let p = Person(lisenceID: "abc123", firstName: "Moe", lastName: "Green")
var p2 = p

//p2 is a copy of p (Not a pointer / ref)
p2.firstName = "David"
print(p) //Moe

//1) structs don't do inheritance. structs are simpler than classes.
//2) structs are value types (not reference types)


//3)structs are immutable by default:
//Methods Can't change values unless declared as mutating functions.

//classes dont have a free init:
class Student{
    //stored properties:
    var firstName: String
    var lastName:String
    
    //init:
    init(firstName:String, lastName:String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    //computed property:
    //get (no setter)
    var fullName:String{
        return "\(firstName) \(lastName)"
    }
}

var s = Student(firstName: "Avi", lastName: "Ron")
s.firstName = ""
s.lastName = ""
//s.fullName = "asa"








class Passenger{
    //stored properties:
    let name:String
    var age:Int
    
    init(name:String ,age: Int) {
        self.name = name
        self.age = age
    }
    
    //actions:
    func priceToPay(_ basePrice: Double) -> Double{
        let price = basePrice * 2
        let vat = price * 0.17
        
        let total = price + vat
        
        return total
        
        //return basePrice * 2 * 1.17
    }
}


//classes enable inheritance
class VIPPassenger : Passenger{
    let discount:Double
    
    init(name: String, age: Int, discount: Double) {
        self.discount = discount
        super.init(name: name, age: age)
    }
    //inits are inherited only if we dont define our own init
    
    override func priceToPay(_ basePrice: Double) -> Double {
        //DRY
        return super.priceToPay(basePrice) * (1 - discount)
    }
}

let pass = VIPPassenger(name: "Dave", age: 19, discount: 0.15)
print(pass.priceToPay(50))

























//structs get a free description
class Animal : CustomStringConvertible{
    var age: Int
    var description: String{
        return "Age \(age)"
    }
    
    init(age: Int) {
        self.age = age
    }
    
    func makeSound(){
        print("Animal Sound")
    }
}

class Dog : Animal{
    //stored property
    var dogType: String
    override var description: String{
        return "(Dog Type: \(dogType), \(super.description))"
    }
    init(age: Int, dogType: String) {
        self.dogType = dogType
        super.init(age: age)
    }
    override func makeSound() {
        print("Hav - Gav")
    }
}
class Cat : Animal{
    var catType: String
    override var description: String{
        return "(Cat Type: \(catType),  \(super.description))"
    }
    init(age: Int, catType: String) {
        self.catType = catType
        super.init(age: age)
    }
    override func makeSound() {
        super.makeSound()
        print("Miau")
    }
}


let mitzi = Cat(age: 2, catType: "StreetCat")

print(mitzi)




















struct Car{
    //stored property: get, set
    var color: String
    
    //computed property, get only
    var description:String{
        return "\(color)"
    }
}


enum Day: CustomStringConvertible{
    case SUNDAY, MONDAY
    
    var description: String{
        return "יום"
    }
}

















