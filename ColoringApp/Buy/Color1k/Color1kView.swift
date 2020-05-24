//
//  Color1kView.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/20/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class Color1kView: UIView {

    @IBOutlet weak var priceButton: UIButton!
    @IBOutlet var color1kView: UIView!
    
   
    required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
           color1kViewFromNib()
           priceButtonLoad()
           
       }
       
       func color1kViewFromNib() -> UIView {
          Bundle.main.loadNibNamed("Color1k", owner: self, options: nil)
           addSubview(color1kView)
           color1kView.frame = self.bounds
           autoresizingMask = [ .flexibleWidth, .flexibleHeight]
        
           color1kView.layer.shadowColor = UIColor.lightGray.cgColor
           color1kView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
           color1kView.layer.shadowRadius = 8.0
           color1kView.layer.cornerRadius = 10.0
           color1kView.layer.shadowOpacity = 0.5
           color1kView.layer.masksToBounds = false
           color1kView.layer.backgroundColor = UIColor.white.cgColor
           return color1kView
           
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
