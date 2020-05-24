//
//  FlowersDataSource.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/16/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

final class FlowersDataSource: NSObject, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var flowersNames = ["s4","s5","s6"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        flowersNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "default", for: indexPath) as! FlowersCollectionViewCell
        
        cell.layer.shadowColor = UIColor.lightGray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        cell.layer.shadowRadius = 8.0
        cell.layer.cornerRadius = 10.0
        cell.layer.shadowOpacity = 0.5
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        cell.layer.backgroundColor = UIColor.white.cgColor
        
        cell.flowerImage.image = UIImage(named: flowersNames[indexPath.row])
        cell.flowerImage.layer.cornerRadius = 10
        cell.flowerImage.layer.masksToBounds = true
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           CGSize(width: 128, height: 128)
       }

}
