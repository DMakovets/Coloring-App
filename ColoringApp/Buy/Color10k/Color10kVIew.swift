//
//  Color10kVIew.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/20/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class Color10kVIew: UIView {

    @IBOutlet weak var priceButton: UIButton!
    @IBOutlet var color10kView: UIView!
    
     required init?(coder aDecoder: NSCoder) {
              super.init(coder: aDecoder)
              color10kViewFromNib()
              priceButtonLoad()
              
          }
          
          func color10kViewFromNib() -> UIView {
              Bundle.main.loadNibNamed("Color10k", owner: self, options: nil)
              addSubview(color10kView)
              color10kView.frame = self.bounds
              autoresizingMask = [ .flexibleWidth, .flexibleHeight]
            color10kView.layer.shadowColor = UIColor.lightGray.cgColor
              color10kView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
              color10kView.layer.shadowRadius = 8.0
              color10kView.layer.cornerRadius = 10.0
              color10kView.layer.shadowOpacity = 0.5
              color10kView.layer.masksToBounds = false
              color10kView.layer.backgroundColor = UIColor.white.cgColor
              return color10kView
              
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
