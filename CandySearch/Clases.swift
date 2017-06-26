//
//  Class.swift
//  CandySearch
//
//  Created by Admin on 18.06.17.
//  Copyright © 2017 Peartree Developers. All rights reserved.
//

import Foundation

class Favoritee {
    let id : Int
    let category : String
    let name : String
    let text :String
    let coordinateX: Float
    let coordinateY: Float
    
    init(id:Int,category:String,name:String,text:String,corx:Float,corY:Float)
   {
     self.id = id
    self.category = category
    self.name = name
    self.text = text
    self.coordinateX = corx
    self.coordinateY = corY
    }
    func add(city : City){
        
    }
}
struct City {
    let id:Int!
    let category : String
    let name : String
    let text :String
    let coordinateX: Float
    let coordinateY: Float
    //   let coordinate : String
}

struct CategoryPlaces {
    var idCity: Int!
    var idCategory:Int
    var name: String!
    var idPhoto: String
    var corX:Float
    var corY:Float
    var text: String
    var adress:String
}

struct CategoryId{
    var id:Int
    var name:String
}
