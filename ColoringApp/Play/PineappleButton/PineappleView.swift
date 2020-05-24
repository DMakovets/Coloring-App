//
//  PuneappleView.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/19/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class PineappleView: UIView {
    
    @IBOutlet weak var pineappleLabel: UILabel!
    @IBOutlet weak var pineappleButton: UIButton!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        scoreFromNib()
        pineappleButtonLoad()
        pineappleLabelLoad()
    }
    
    func scoreFromNib() -> UIView {
        let bundle = Bundle.init(for: type(of: self))
        let nib = UINib(nibName: "Pineapple", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        frame = bounds
        autoresizingMask = [ .flexibleWidth, .flexibleHeight]
        addSubview(view)
        return view
        
    }
    func pineappleButtonLoad(){
        pineappleButton.layer.shadowColor = UIColor.lightGray.cgColor
        pineappleButton.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        pineappleButton.layer.shadowRadius = 8.0
        pineappleButton.layer.cornerRadius = 25
        pineappleButton.layer.shadowOpacity = 0.5
        pineappleButton.layer.masksToBounds = false
        pineappleButton.layer.backgroundColor = UIColor.white.cgColor
    }
    
    func pineappleLabelLoad(){
        pineappleLabel.layer.shadowColor = UIColor.lightGray.cgColor
        pineappleLabel.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        pineappleLabel.layer.shadowRadius = 8.0
        pineappleLabel.layer.cornerRadius = 9
        pineappleLabel.layer.shadowOpacity = 0.5
        pineappleLabel.layer.masksToBounds = true
        pineappleButton.layer.backgroundColor = UIColor.white.cgColor
    }
    
}
