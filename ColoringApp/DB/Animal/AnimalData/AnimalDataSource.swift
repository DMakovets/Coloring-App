//
//  AnimalDataSource.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/16/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit
import RealmSwift
final class AnimalDataSource: NSObject, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    var animalNames = ["s1","s2","s3"]
    
    var didSelectItem: ((_ animal: AnimalModel) -> Void)?
    
    let animals:  Results<AnimalModel> = {
        let realm = try! Realm()
        return realm.objects(AnimalModel.self).sorted(byKeyPath: "lastReadDate")
    }()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        animals.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "default", for: indexPath) as! AnimalCollectionViewCell
        
        cell.layer.shadowColor = UIColor.lightGray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        cell.layer.shadowRadius = 8.0
        cell.layer.cornerRadius = 10.0
        cell.layer.shadowOpacity = 0.5
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        cell.layer.backgroundColor = UIColor.white.cgColor
        
       // cell.animalImage.image = UIImage(named: animalNames[indexPath.row])
        let animal = animals[indexPath.item]
         cell.animalImage.image = UIImage(data: animal.imageData!)
        cell.animalImage.layer.cornerRadius = 10
        cell.animalImage.layer.masksToBounds = true
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           CGSize(width: 128, height: 128)
       }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        didSelectItem?(animals[indexPath.item])
    }

}
