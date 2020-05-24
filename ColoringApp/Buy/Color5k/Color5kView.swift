//
//  Color5kView.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/20/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class Color5kView: UIView {

    @IBOutlet weak var mostPopView: UIView!
    @IBOutlet weak var priceButton: UIButton!
    @IBOutlet weak var color5kView: UIView!
    @IBOutlet var color5kFullView: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        Color5kFromNib()
        color5kViewLoad()
        priceButtonLoad()
        mostPopViewLoad()
        
    }
    
    func Color5kFromNib() -> UIView {
       Bundle.main.loadNibNamed("Color5k", owner: self, options: nil)
        addSubview(color5kFullView)
        color5kFullView.frame = self.bounds
        autoresizingMask = [ .flexibleWidth, .flexibleHeight]
        return color5kFullView
        
    }
    
    func mostPopViewLoad(){
        mostPopView.layer.shadowColor = UIColor.lightGray.cgColor
        mostPopView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        mostPopView.layer.shadowRadius = 8.0
        mostPopView.layer.cornerRadius = 8.5
        mostPopView.layer.shadowOpacity = 0.5
        mostPopView.layer.masksToBounds = true
    }
    
    func color5kViewLoad(){
        color5kView.layer.shadowColor = UIColor.lightGray.cgColor
        color5kView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        color5kView.layer.shadowRadius = 8.0
        color5kView.layer.cornerRadius = 10
        color5kView.layer.shadowOpacity = 0.5
        color5kView.layer.masksToBounds = false
        color5kView.layer.backgroundColor = UIColor.white.cgColor
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
