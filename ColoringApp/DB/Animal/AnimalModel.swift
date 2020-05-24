//
//  AnimalModel.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/22/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import Realm
import RealmSwift

final class AnimalModel: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var lastReadDate: Date?
    @objc dynamic var addedDate = Date()
    @objc dynamic var imageData: Data?
    @objc dynamic var scoreImage = ""
    
    convenience init(name: String, imageData: Data?, lastReadDate: Date, addedDate: Date, scoreImage: String){
        
        self.init()
        self.name = name
        self.imageData = imageData
        self.lastReadDate = lastReadDate
        self.addedDate = addedDate
        self.scoreImage = scoreImage
    }
    
    convenience init(name: String, author: String, imageData: Data?) {
        self.init()
        self.name = name
        self.imageData = imageData
    }
}
