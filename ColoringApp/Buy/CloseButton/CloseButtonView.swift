//
//  CloseButtonView.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/19/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class CloseButtonView: UIView {
    
    @IBOutlet var closeButtonVIew: UIView!
    
    override init(frame: CGRect){
        super.init(frame: frame)
        closeButtonFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        closeButtonFromNib()
    }
    
    
    func closeButtonFromNib() -> UIView {
        Bundle.main.loadNibNamed("CloseButton", owner: self, options: nil)
        addSubview(closeButtonVIew)
        closeButtonVIew.frame = self.bounds
        autoresizingMask = [ .flexibleWidth, .flexibleHeight]
        
        closeButtonVIew.layer.shadowColor = UIColor.lightGray.cgColor
        closeButtonVIew.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        closeButtonVIew.layer.shadowRadius = 8.0
        closeButtonVIew.layer.cornerRadius = 25.0
        closeButtonVIew.layer.shadowOpacity = 0.3
        closeButtonVIew.layer.masksToBounds = false
        closeButtonVIew.layer.backgroundColor = UIColor.white.cgColor
        return closeButtonVIew
        
    }
    
    @IBAction func backButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "backBuy"), object: nil)
    }
    
    
}
