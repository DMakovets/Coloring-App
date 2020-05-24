//
//  YourQuantityView.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/19/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class YourQuantityView: UIView {
    
    @IBOutlet var yourQuantityView: UIView!
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        YourQuantityFromNib()
        
    }
    
    func YourQuantityFromNib() -> UIView {
       Bundle.main.loadNibNamed("YourQuantity", owner: self, options: nil)
        addSubview(yourQuantityView)
        yourQuantityView.frame = self.bounds
        autoresizingMask = [ .flexibleWidth, .flexibleHeight]
        
        yourQuantityView.layer.shadowColor = UIColor.lightGray.cgColor
        yourQuantityView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        yourQuantityView.layer.shadowRadius = 8.0
        yourQuantityView.layer.cornerRadius = 25.0
        yourQuantityView.layer.shadowOpacity = 0.5
        yourQuantityView.layer.masksToBounds = false
        yourQuantityView.layer.backgroundColor = UIColor.white.cgColor
        return yourQuantityView
        
    }
    
}
