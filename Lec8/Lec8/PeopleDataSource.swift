//
//  PeopleDataSource.swift
//  Lec8
//
//  Created by hackeru on 11/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class PeopleDataSource{
    //in swift: static vars are lazy loaded by default
    static let shared = PeopleDataSource()
    
    private init(){}
    
    func getPeople()-> [Person]{
        
        //url for our people.json file //file://users/avi/emulator
        guard let url = Bundle.main.url(forResource: "people", withExtension: "json") else {return []}
        
        //people = new empty array
        var people = [Person]()
        
        //fill the array:
        //read the file as binary ( Data )
        guard let data = try? Data(contentsOf: url) else {return []}
        //print(data) //8 bytes
        
        guard let jsonArray = try? JSONSerialization.jsonObject(with: data, options: []) as? Array<JSON> else {return []}

        for item in jsonArray!{
            let firstName = item["first_name"] as! String
            let lastName = item["last_name"] as! String
            let id = item["id"] as! Int
            let email = item["email"] as! String
            let gender = item["gender"] as! String
            let ipAddress = item["ip_address"] as! String
            
            let person = Person(id: id, first_name: firstName, last_name: lastName, email: email, gender: gender, ip_address: ipAddress)
            
            people.append(person)
        }
        //return the people array
        return people
    }
    
    func getPeopleCodable()->[Person]{
        guard let url = Bundle.main.url(forResource: "people", withExtension: "json") else {return []}
        
        var s = 3 > 4 ? "A" : "B"
        
        
        //read the url as Binary Data
        guard let data = try? Data(contentsOf: url) else {return []}
        
        //let people:[Person] = one line new JsonDecoder().decode(type, data)
        return (try? JSONDecoder().decode([Person].self, from: data)) ?? []
    }
}

typealias JSON = Dictionary<String ,Any>

//[Dictionary<String, Any>]
//JsonObject: Dictionary<String, Any>

/*
class PeopleDataSource{
    //singleton
    private init(){}
    
    private static let  instance: PeopleDataSource = PeopleDataSource()
    
    //singleton, lazy loaded singleton, Double Checked Singleton
    public static func getInstance()->PeopleDataSource{
        return instance
    }
//    public static func getInstance()->PeopleDataSource{
    
    //lazy loading:
//        if instance == nil{
//            instance = PeopleDataSource()
//        }
//
//        return instance
//    }
}





*/
