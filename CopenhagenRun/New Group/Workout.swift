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
    @objc dynamic var numberOfCycles = 0
    @objc dynamic var totalTimeMinutes = 0
    @objc dynamic var date = Date()
    let calories = RealmOptional<Int>()
    let averageSpeed = RealmOptional<Int>()
    let maxSpeed = RealmOptional<Int>()
    let totalDistance = RealmOptional<Int>()
    let numberOfSteps = RealmOptional<Int>()
    @objc dynamic var rating: String? = nil
    
    let user = LinkingObjects(fromType: User.self, property: "workouts")
    @objc dynamic var userId = 0
    
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
