//
//  BackButton.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/19/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class BackButton: UIView {
    
    @IBOutlet weak var backButton: UIButton!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadViewFromNib()
        // loadButton()
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = Bundle.init(for: type(of: self))
        let nib = UINib(nibName: "Button", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        frame = bounds
        autoresizingMask = [ .flexibleWidth, .flexibleHeight]
        addSubview(view)
        
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        view.layer.shadowRadius = 8.0
        view.layer.cornerRadius = 25.0
        view.layer.shadowOpacity = 0.5
        view.layer.masksToBounds = false
        view.layer.backgroundColor = UIColor.white.cgColor
        return view
        
    }
    //    func loadButton(){
    //        backButton.layer.cornerRadius = 25
    //        backButton.layer.shadowColor = UIColor.lightGray.cgColor
    //        backButton.layer.shadowOffset = CGSize(width: 0, height: 2.0)
    //        backButton.layer.shadowRadius = 8.0
    //        backButton.layer.shadowOpacity = 0.5
    //        backButton.layer.masksToBounds = false
    //        backButton.layer.backgroundColor = UIColor.white.cgColor
    //    }
    
    @IBAction func goToMainVC(_ sender: Any) {
         NotificationCenter.default.post(name: NSNotification.Name(rawValue: "playVCtoMainVC"), object: nil)
    }
}
