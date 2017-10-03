//
//  Workout.swift
//  CopenhagenRun
//
//  Created by Slobodan Kovrlija on 10/3/17.
//  Copyright © 2017 IrinaErnst. All rights reserved.
//

import Foundation
import RealmSwift

// Workout model
final class Workout: Object {
    @objc dynamic var id = 0
    let numberOfCycles = RealmOptional<Int>()
    let totalTimeMinutes = RealmOptional<Int>()
    let date = RealmOptional<Int>()
    let calories = RealmOptional<Int>()
    let averageSpeed = RealmOptional<Int>()
    let maxSpeed = RealmOptional<Int>()
    let totalDistance = RealmOptional<Int>()
    let numberOfSteps = RealmOptional<Int>()
    let rating = RealmOptional<Int>()
    
    let user = LinkingObjects(fromType: User.self, property: "workouts")
    @objc dynamic var userId = 0
    
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
