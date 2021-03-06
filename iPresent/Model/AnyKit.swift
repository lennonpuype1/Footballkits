//
//  AnyKit.swift
//  iPresent
//
//  Created by Lennon Puype on 10/04/2019.
//  Copyright © 2019 Lennon Puype. All rights reserved.
//

import Foundation

class AnyKit {
    var id: Int;
    var playerName: String;
    var backName: String;
    var name: String;
    var year: String;
    var team: String;
    var signed: Bool;
    var matchworn: Bool;
    var description: String;
    var brand: String;
    
    
    init(id: Int, playerName:String, backName:String, name:String, year: String, team: String, signed: Bool, matchworn: Bool, description: String, brand: String){
        self.id = id;
        self.playerName = playerName;
        self.backName = backName;
        self.name = name;
        self.year = year;
        self.team = team;
        self.signed = signed;
        self.matchworn = matchworn;
        self.description = description;
        self.brand = brand;
    }
}
