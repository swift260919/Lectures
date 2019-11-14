import UIKit
 
var params = ["api_key": "abc", "sort_by":"popularity"]

let arr = params.map{"\($0)=\($1)"}

let q = arr.joined(separator:"&")
print(q)

//let v2 = params.map{(key, value) in
//    return "\(key)=\(value)"
//}
 



//how to iterate a dictionary

//var qString = ""
//for (key, val) in params{
//    qString = qString + "\(key)=\(value)&"
//}

//"api_key=abc&sort_by=popularity&"


var base = "http://api.com/movie"





//var numbers = [1, 2, 3 ,4]

//convert numbers to ["1" ,"2", "3", "4"]

//
//var arr = [String]()
//for num in numbers{
//    arr.append(String(num))
//}


//var arr = numbers.map{String($0)}




//
let dict = ["Riki": "Rock", "The":"Volt", "Java":"Rules"] // -> convert to an array of person!



struct Person{
    let name:String
    let last:String
}


var people = dict.map {Person(name: $0, last: $1)}


func hi(name:String, last:String)->Person{return Person(name: "", last: "")}

var pips = dict.map(hi)




















