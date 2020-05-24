//
//  TrainingViewController.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/20/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class TrainingViewController: UIViewController {
    
    let pageVC = TrainingPageVC()
    
    
  
    @IBOutlet var viewPicker: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var priceNumberLabel: UILabel!
    @IBOutlet weak var priceImage: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    
    
    var firstText = ""
    var secondText = ""
    var image = UIImage()
    var priceNumber = ""
    var priceImages = UIImage()
    var buttonNext = "Next"
    
    var currentPage = 0
    var numberOfPages = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewPicker.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        firstLabel.text = firstText
        secondLabel.text = secondText
        imageView.image = image
        pageControl.numberOfPages = numberOfPages
        pageControl.currentPage = currentPage
        priceNumberLabel.text = priceNumber
        priceImage.image = priceImages 
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        
//        view.isOpaque = false
    }
    
//    @IBAction func nextButton(_ sender: Any) {
//       currentPage += 1
//        pageVC.showViewControllerAtIndex(currentPage)
//    }
    
}
