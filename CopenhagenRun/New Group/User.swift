//
//  User.swift
//  CopenhagenRun
//
//  Created by Slobodan Kovrlija on 10/3/17.
//  Copyright © 2017 IrinaErnst. All rights reserved.
//

import Foundation
import RealmSwift

final class User: Object {
    @objc dynamic var id = 0
    @objc dynamic var email = ""
    @objc dynamic var alias = ""
    @objc dynamic var password = ""
    
    let workouts = List<Workout>()
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
