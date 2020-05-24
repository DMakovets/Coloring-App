//
//  MagicHandView.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/19/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit
class MagicHandView: UIView {
      
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var magicHandButton: UIButton!
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        scoreFromNib()
        magicHandButtonLoad()
        infoButtonLoad()
        priceLabelLoad()
    }
    
    
    func scoreFromNib() -> UIView {
        let bundle = Bundle.init(for: type(of: self))
        let nib = UINib(nibName: "MagicHand", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        frame = bounds
        autoresizingMask = [ .flexibleWidth, .flexibleHeight]
        addSubview(view)
        return view
        
    }
    
    func magicHandButtonLoad(){
        magicHandButton.layer.shadowColor = UIColor.lightGray.cgColor
        magicHandButton.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        magicHandButton.layer.shadowRadius = 8.0
        magicHandButton.layer.cornerRadius = 25
        magicHandButton.layer.shadowOpacity = 0.5
        magicHandButton.layer.masksToBounds = false
        magicHandButton.layer.backgroundColor = UIColor.white.cgColor
    }
    
    func infoButtonLoad(){
       infoButton.layer.shadowColor = UIColor.lightGray.cgColor
        infoButton.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        infoButton.layer.shadowRadius = 8.0
        infoButton.layer.cornerRadius = 9
        infoButton.layer.shadowOpacity = 0.5
        infoButton.layer.masksToBounds = true

    }
    
    func priceLabelLoad(){
          priceLabel.layer.shadowColor = UIColor.lightGray.cgColor
          priceLabel.layer.shadowOffset = CGSize(width: 0, height: 2.0)
          priceLabel.layer.shadowRadius = 8.0
          priceLabel.layer.cornerRadius = 9
          priceLabel.layer.shadowOpacity = 0.5
          priceLabel.layer.masksToBounds = true
          priceLabel.layer.backgroundColor = UIColor.white.cgColor
      }
    
    @IBAction func infoButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "info"), object: nil)
    }
}
