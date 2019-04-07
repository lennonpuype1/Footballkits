//
//  Footballer.swift
//  iPresent
//
//  Created by Lennon Puype on 07/04/2019.
//  Copyright © 2019 Lennon Puype. All rights reserved.
//

import Foundation

class Footballer{
    var id: Int;
    var name: String;
    var age: Int;
    var alive: Bool;
    var team: String;
    var biggest_period: Array<Any>;
    var national: String;
    var bio: String;
    
    init(id: Int, name: String, age: Int, alive: Bool, team: String, biggest_period: Array<Any>, national: String, bio: String){
        self.id = id;
        self.name = name;
        self.age = age;
        self.alive = alive;
        self.team = team;
        self.biggest_period = biggest_period;
        self.national = national;
        self.bio = bio;
    }
}
