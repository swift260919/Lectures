import UIKit

//tuple is a pack of variables
//more types:
//tuples
let tuple = ("Moe", 3)

//a function that returns a tuple of 2 Ints
func statistics(arr: [Int])->(min: Int?, max: Int?){
    return (arr.min(), arr.max())
}

let result = statistics(arr: [3, 4, 5, 0])
print(result.min) //min
print(result.max) //max


//tuples are usefull, but may be less readable

//tuple destructuring:
let (min, max) = statistics(arr: [1, 2, 0, 9, 1, 3, 4, 5, 6])
print(min)

//write a function that takes a name
//the function will return the count of chars
//the function will also return the name in Captilized case

func practice(name:String)->(count: Int, inCaps: String){
    return (name.count, name.capitalized)
}



func practice2(name:String) ->(caps:String, lower:String, upper:String){
    return (name.capitalized, name.lowercased(), name.uppercased())
}


//porting
//practice2(name: "Avvi").caps




//Enums with raw Value:
enum Day: Int{
    //the name of the case
    case Sunday = 1, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday
    
    func print(){/*..*/}
}

// how to use them? -> we may select from the available cases
let d:Day = Day.Thursday


//4 suits
//create an enum for Suit (♠️, ♥️, ♣️, ♦️)   ctrl+cmd+space
//create an enum for Rank (2, 3, 4, 5, 6, 7, 8 ,9, 10, Jack, Queen, King, Ace





enum Faces:String{
    case smile = "😀"
}


enum Suit: Int{
    case Spades = 1, Hearts, Diamonds, Clubs
    
    func toString() -> String{
        switch self {
        case .Spades:
            return "♠️"
        case .Hearts:
            return "♥️"
        case .Diamonds:
            return "♦️"
        case .Clubs:
            return "♣️"
        }
    }
}

enum Rank: Int{
    case Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King, Ace
    
    //computed property
    var description: String{
        switch self{
        case .Jack:
            return "J"
        case .Queen:
            return "Q"
        case .King:
            return "K"
        case .Ace:
            return "A"
        default:
            return String(rawValue)
        }
    }
 
    var blackJackValue: Int{
        switch self{
        case .Jack, .Queen, .King:
            return 10
        case .Ace:
            return 1
        default:
            return rawValue
        }
    }
}

//tuples, enums

//structs, class, protocols

//random card...
let r = Int.random(in: 2...14)
if let rank = Rank(rawValue: r){
    print(rank.description, "of ❤️")
}


//
//for i in 2...14{
//    if let rank = Rank(rawValue: i){
//        print(rank.blackJackValue)
//    }
//}
//
//
















