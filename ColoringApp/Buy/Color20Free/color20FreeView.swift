//
//  color20Free.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/19/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class color20FreeView: UIView {
    
    
    @IBOutlet weak var watchButton: UIButton!
    @IBOutlet var color20View: UIView!
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        color20FreeFromNib()
        watchButtonLoad()
        
    }
    
    func color20FreeFromNib() -> UIView {
        Bundle.main.loadNibNamed("Color20", owner: self, options: nil)
        addSubview(color20View)
        color20View.frame = self.bounds
        autoresizingMask = [ .flexibleWidth, .flexibleHeight]
        
        color20View.layer.shadowColor = UIColor.lightGray.cgColor
        color20View.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        color20View.layer.shadowRadius = 8.0
        color20View.layer.cornerRadius = 10.0
        color20View.layer.shadowOpacity = 0.5
        color20View.layer.masksToBounds = false
        color20View.layer.backgroundColor = UIColor.white.cgColor
        return color20View
        
    }
    
    func watchButtonLoad(){
        watchButton.layer.shadowColor = UIColor.lightGray.cgColor
        watchButton.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        watchButton.layer.shadowRadius = 8.0
        watchButton.layer.cornerRadius = 15
        watchButton.layer.shadowOpacity = 0.5
        watchButton.layer.masksToBounds = false
    }
    
    @IBAction func watchButton(_ sender: Any) {
         NotificationCenter.default.post(name: NSNotification.Name(rawValue: "video"), object: nil)
}
    
}
