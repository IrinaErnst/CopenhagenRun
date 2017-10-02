//
//  RealmDataStore.swift
//  CopenhagenRun
//
//  Created by Irina Ernst on 10/2/17.
//  Copyright © 2017 IrinaErnst. All rights reserved.
//

import Foundation
import RealmSwift

class RealmDataStore: RealmDataStoreType {
    
    // MARK: - Properties
    let realm: Realm!
    
    // MARK: Initializer(s)
    init(realm: Realm) {
        self.realm = realm
    }
    
    // Convenience initializer for testing - see test example.
    convenience init() {
        self.init(realm: try! Realm())
    }
}
