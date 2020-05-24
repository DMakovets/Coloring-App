//
//  Color150kView.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/20/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class Color150kView: UIView {

    @IBOutlet weak var priceButton: UIButton!
    @IBOutlet weak var color150kView: UIView!
    @IBOutlet weak var bestValueView: UIView!
    @IBOutlet var color150kFullView: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        Color150kFromNib()
        color150kViewLoad()
        priceButtonLoad()
        bestValueViewLoad()
        
    }
    
    func Color150kFromNib() -> UIView {
       Bundle.main.loadNibNamed("Color150k", owner: self, options: nil)
        addSubview(color150kFullView)
        color150kFullView.frame = self.bounds
        autoresizingMask = [ .flexibleWidth, .flexibleHeight]
        return color150kFullView
        
    }
    
    func bestValueViewLoad(){
        bestValueView.layer.shadowColor = UIColor.lightGray.cgColor
        bestValueView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        bestValueView.layer.shadowRadius = 8.0
        bestValueView.layer.cornerRadius = 8.5
        bestValueView.layer.shadowOpacity = 0.5
        bestValueView.layer.masksToBounds = true
    }
    
    func color150kViewLoad(){
        color150kView.layer.shadowColor = UIColor.lightGray.cgColor
        color150kView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        color150kView.layer.shadowRadius = 8.0
        color150kView.layer.cornerRadius = 10
        color150kView.layer.shadowOpacity = 0.5
        color150kView.layer.masksToBounds = false
        color150kView.layer.backgroundColor = UIColor.white.cgColor
    }
    
    func priceButtonLoad(){
        priceButton.layer.shadowColor = UIColor.lightGray.cgColor
        priceButton.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        priceButton.layer.shadowRadius = 8.0
        priceButton.layer.cornerRadius = 15
        priceButton.layer.shadowOpacity = 0.5
        priceButton.layer.masksToBounds = false
        priceButton.layer.backgroundColor = UIColor.white.cgColor
    }
}
