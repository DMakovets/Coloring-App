//
//  TrainingPageVCViewController.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/20/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class TrainingPageVC: UIPageViewController {
    
    let allText = MassiveText()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        if let trainingViewController = showViewControllerAtIndex(0){
            setViewControllers([trainingViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func showViewControllerAtIndex(_ index: Int) -> TrainingViewController? {
        
        let storyboard = UIStoryboard(name: "Training", bundle: nil)
        guard index >= 0 else { return nil }
        guard index < allText.boldTextContent.count else {
            let userDefaults = UserDefaults.standard
            userDefaults.set(true, forKey: "presentationWasViewed")
            dismiss(animated: true, completion: nil)
            return nil
        }
        
        guard let trainingViewController = storyboard.instantiateViewController(withIdentifier: "TrainingViewController") as? TrainingViewController else {return nil}
        trainingViewController.firstText = allText.boldTextContent[index]
        trainingViewController.secondText = allText.normalTextContent[index]
        trainingViewController.image = allText.imageContent[index]!
        trainingViewController.priceImages = allText.massivImagePrice[index]!
        
        trainingViewController.priceNumber = allText.massivePrice[index]
        trainingViewController.currentPage = index
        trainingViewController.numberOfPages = allText.boldTextContent.count
        return trainingViewController
    }
    
    
}

extension TrainingPageVC: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var pageNumber = (viewController as! TrainingViewController).currentPage
        pageNumber -= 1
        return showViewControllerAtIndex(pageNumber)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var pageNumber = (viewController as! TrainingViewController).currentPage
        pageNumber += 1
        return showViewControllerAtIndex(pageNumber)
    }
    
    
}
