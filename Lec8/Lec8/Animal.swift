//
//  Animal.swift
//  Lec8
//
//  Created by hackeru on 11/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

struct Animal: Codable{
    let id: Int
    let animalName:String
    let scientificName:String
    let color:String
    
    var uiColor: UIColor{
        return hexStringToUIColor(hex: color)
    }
    
    let herbivorous:Bool
    
    //String is a rawValue, CodingKey is a protocol
    enum CodingKeys: String, CodingKey{
        case id
        case animalName = "animal_name"
        case scientificName = "scientific_name"
        case color
        case herbivorous
    }
}
//https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types


//Paste 2



func hexStringToUIColor (hex:String) -> UIColor {

    //trim spaces and new lines, uppercased
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

    //remove the # if exists
    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }

    //valdiate that we have 6 chars
    if ((cString.count) != 6) {
        return UIColor.gray
    }

    //
    var rgbValue:UInt32 = 0
    Scanner(string: cString).scanHexInt32(&rgbValue)
    
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

 

func demo(){
    var color = "#aabbcc"
       if color.hasPrefix("#"){
           color.remove(at: color.startIndex)
       }
       
       let r = Int(color.subString(from: 0, to: 1), radix: 16)
       let g = Int(color.subString(from: 2, to: 3), radix: 16)
       let b = Int(color.subString(from: 4, to: 5), radix: 16)
    
    
}


 
func useIncrement(){
    var y = 0
    increment(x: &y)
    //y = 10
}

func increment( x: inout Int){
    //x is mutable
     x = 10
}


extension String{
    func subString(from: Int, to: Int) -> String{
        //offset by 2 chars (startIndex ,ofsset by 2)
        let startIdx = self.index(self.startIndex, offsetBy: from)
        let endIdx = self.index(self.startIndex, offsetBy: to)
        
        return String(self[startIdx...endIdx])
    }
}
