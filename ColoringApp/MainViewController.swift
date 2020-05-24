//
//  MainViewController.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/16/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBOutlet weak var animalCollectionView: UICollectionView!
    @IBOutlet weak var flowerCollectionView: UICollectionView!
    @IBOutlet weak var birdCollectionView: UICollectionView!
    @IBOutlet weak var tabBarView: UIView!
    
    let animalDataSource = AnimalDataSource()
    let flowerDataSource = FlowersDataSource()
    let birdDataSource = BirdsDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dounloadAllDBFuck()
        delegate()
        tabBarViewSetting()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    
    
    
    func delegate(){
        animalCollectionView.dataSource = animalDataSource
        animalCollectionView.delegate = animalDataSource
        flowerCollectionView.dataSource = flowerDataSource
        flowerCollectionView.delegate = flowerDataSource
        birdCollectionView.dataSource = birdDataSource
        birdCollectionView.delegate = birdDataSource
        animalDS()
    }
    
    
    func reloadData(){
        animalCollectionView.reloadData()
        flowerCollectionView.reloadData()
        birdCollectionView.reloadData()
    }
    
    func animalDS(){
            animalDataSource.didSelectItem = { [unowned self] animal in
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "PlayViewController") as! PlayViewController
                let image = UIImage(data: animal.imageData!)
                vc.quantityColor = animal.scoreImage
                vc.imageGame = image
    self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func dounloadAllDBFuck(){
        let imageData = UIImage(named: "1.png")?.pngData()
        let newAnimal = AnimalModel(name: "firstAnimal", imageData: imageData, lastReadDate: Date(), addedDate: Date(), scoreImage: "20000")
        let imageData2 = UIImage(named: "s2.png")?.pngData()
        let newAnimal2 = AnimalModel(name: "secondAnimal", imageData: imageData2, lastReadDate: Date(), addedDate: Date(), scoreImage: "20000")
        let imageData3 = UIImage(named: "s3.png")?.pngData()
        let newAnimal3 = AnimalModel(name: "thirdAnimal", imageData: imageData3, lastReadDate: Date(), addedDate: Date(), scoreImage: "20000")
        AnimalManager.saveAnimalInDB(newAnimal)
        AnimalManager.saveAnimalInDB(newAnimal2)
        AnimalManager.saveAnimalInDB(newAnimal3)
        reloadData()
    }
    
    func tabBarViewSetting(){
        tabBarView.layer.shadowColor = UIColor.lightGray.cgColor
               tabBarView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
               tabBarView.layer.shadowRadius = 8.0
               tabBarView.layer.cornerRadius = 25.0
               tabBarView.layer.shadowOpacity = 0.5
               tabBarView.layer.masksToBounds = false
               tabBarView.layer.backgroundColor = UIColor.white.cgColor
    }
    
    @IBAction func infoButton(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "InfoViewController") as! InfoViewController
        self.navigationController?.pushViewController(vc, animated: false)
    }
}
