//
//  Color50kView.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/20/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class Color50kView: UIView {

    @IBOutlet weak var priceButton: UIButton!
    @IBOutlet var color50kView: UIView!
    
    required init?(coder aDecoder: NSCoder) {
                 super.init(coder: aDecoder)
                 color50kViewFromNib()
                 priceButtonLoad()
                 
             }
             
             func color50kViewFromNib() -> UIView {
                Bundle.main.loadNibNamed("Color50k", owner: self, options: nil)
                 addSubview(color50kView)
                 color50kView.frame = self.bounds
                 autoresizingMask = [ .flexibleWidth, .flexibleHeight]
                 color50kView.layer.shadowColor = UIColor.lightGray.cgColor
                 color50kView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
                 color50kView.layer.shadowRadius = 8.0
                 color50kView.layer.cornerRadius = 10.0
                 color50kView.layer.shadowOpacity = 0.5
                 color50kView.layer.masksToBounds = false
                 color50kView.layer.backgroundColor = UIColor.white.cgColor
                 return color50kView
                 
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
