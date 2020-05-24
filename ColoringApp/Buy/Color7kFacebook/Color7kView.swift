//
//  Color7kView.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/20/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class Color7kView: UIView {
    
    @IBOutlet weak var unlockView: UIView!
    @IBOutlet weak var color7kView: UIView!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet var color7KView: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        color7kFacebookFromNib()
        color7kViewLoad()
        unlockViewLoad()
        facebookButtonLoad()
        
    }
    
    func color7kFacebookFromNib() -> UIView {
            Bundle.main.loadNibNamed("Color7kFacebook", owner: self, options: nil)
         addSubview(color7KView)
         color7KView.frame = self.bounds
         autoresizingMask = [ .flexibleWidth, .flexibleHeight]
        return color7KView
        
    }
    
    func unlockViewLoad(){
        unlockView.layer.shadowColor = UIColor.lightGray.cgColor
        unlockView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        unlockView.layer.shadowRadius = 8.0
        unlockView.layer.cornerRadius = 8.5
        unlockView.layer.shadowOpacity = 0.5
        unlockView.layer.masksToBounds = true
    }
    
    func color7kViewLoad(){
        color7kView.layer.shadowColor = UIColor.lightGray.cgColor
        color7kView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        color7kView.layer.shadowRadius = 8.0
        color7kView.layer.cornerRadius = 10
        color7kView.layer.shadowOpacity = 0.5
        color7kView.layer.masksToBounds = false
        color7kView.layer.backgroundColor = UIColor.white.cgColor
    }
    
    func facebookButtonLoad(){
        facebookButton.layer.shadowColor = UIColor.lightGray.cgColor
        facebookButton.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        facebookButton.layer.shadowRadius = 8.0
        facebookButton.layer.cornerRadius = 15
        facebookButton.layer.shadowOpacity = 0.5
        facebookButton.layer.masksToBounds = false
    }
}
