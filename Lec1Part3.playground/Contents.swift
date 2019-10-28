import UIKit


let names = ["Daniel", "Moshe", "Nil", "Moe"]

let count = names.count//4

for name in names{
    print(name) // Daniel, Moshe, Nil, Moe
}

//range between 0..<count
//range from 0(inclusive) to count(exclusive)



for i in 0..<count{
    print(i) // 0, 1, 2, 3
    print(names[i])
}


let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
//calc the sum of numbers:
//1) use for i in 0..<count

var sum = 0
for i in 0..<numbers.count{
    sum += numbers[i]
}

//2) use for num in numbers{}
var sum2 = 0
for n in numbers{
    sum2 += n
}



//a) create a func called statistics
//b) max item in the array
//c) min item in the array
//d) sum of all items in the array
//e) mult of all items in the array
//f) avarage of all the items in the array
//




//TODO: add return type
func statistics(arr:[Int])->(Int?, Int?, Int?, Int?, Double?){
    
    if arr.count == 0 {
        //return the empty result
        return (nil, nil, nil, nil, nil)
    }
    
    var min = arr[0]
    var max = arr[0]
    var sum = 0
    var mult = 1
 
    for item in arr{
        if item < min {
            min = item
        }
        if item > max {
            max = item
        }
        //sum
        sum += item
        //mult
        mult *= item
    }
    
    let avg = Double(sum) / Double(arr.count)
    return (max, min, sum, mult, avg)
}


pow(2, 2)
sqrt(4)



















