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
        
        guard let jsonObject = try? JSONSerialization.jsonObject(with: data, options: []) else {return []}
                
        print(jsonObject)
        //return the people array
        return people
    }
}


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
