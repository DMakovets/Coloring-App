//
//  Back.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/19/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class Back: UIButton {

  required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
     //loadButton()
  }
    
    func loadButton(){
        layer.cornerRadius = 25
//        layer.shadowColor = UIColor.lightGray.cgColor
//        layer.shadowOffset = CGSize(width: 0, height: 2.0)
//        layer.shadowRadius = 8.0
//        layer.shadowOpacity = 0.5
        layer.masksToBounds = false
        layer.backgroundColor = UIColor.white.cgColor
    }
}
