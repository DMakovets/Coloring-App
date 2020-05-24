//
//  AnimalManager.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/22/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class AnimalManager {
    
    static func saveAnimalInDB(_ book: AnimalModel ){
        try! realm.write {
            realm.add(book)
        }
    }
    
    static func deleteAnimalInDB(_ place: AnimalModel) {
           try! realm.write {
               realm.delete(place)
           }
       }
}
