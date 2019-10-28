import UIKit

var group = Set<String>()


//prevent duplicates
let result = group.insert("Dave")
if(result.inserted){}


group.insert("Ariel")
group.insert("Dave")



//find 3 winners
//use sets to prevent duplicates

//while count of winners is not 3










//Tuple
let person = ("FirstName", "Last")
print(person.0)
print(person.1)



//tuple
let gasPrices = (5.9, 7, 7.1)














//Optionals, for item in, while, Set, Dictionaries, Arrays





var numbers = [1, 2, 3, 40]

//random 3 winners
var winners = Set<Int>() // 0 winners

while winners.count < 3 {
    
    if let n = numbers.randomElement(){
        //set prevents diplicates
        winners.insert(n)
    }
}


//the while loop is done:
print(winners)






var class1:Set = ["Dave", "Mosh", "Josh", "Dafna"]
var class2:Set = ["Dina", "Dafna", "Josh"]

//Set operations:

let union = class1.union(class2)
print(union)


let intersection = class1.intersection(class2)
print(intersection)


let symetricDiff =  class1.symmetricDifference(class2)
print(symetricDiff)


let aSubb = class1.subtracting(class2)
print(aSubb)




var a = [1, 2, 3, 3]
var aset = Set(a) //remove all duplicates


//from set to array
let clsArray = Array(class2)

//arr- > set



