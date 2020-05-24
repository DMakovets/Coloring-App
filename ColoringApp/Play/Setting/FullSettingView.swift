//
//  FullSettingView.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/19/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class FullSettingView: UIView {
    
    
    @IBOutlet var settingView: UIView!
    @IBOutlet var fullSettingView: UIView!
    @IBOutlet weak var settingButton: UIButton!
    @IBOutlet weak var fullSettingButton: UIButton!
    @IBOutlet weak var vibrationButton: UIButton!
    @IBOutlet weak var soundButton: UIButton!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        settingButtonFromNib()
        
    }
    
    
    
    @IBAction func tapSettingButton(_ sender: Any) {
        fullSettingFromNib()
        settingView.removeFromSuperview()
        
    }
    @IBAction func tapFullSettingButton(_ sender: Any) {
        settingButtonFromNib()
        fullSettingView.removeFromSuperview()
    }
    
    func settingButtonFromNib() -> UIView {
        let bundle = Bundle.init(for: type(of: self))
        let nib = UINib(nibName: "SettingButton", bundle: bundle)
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
    
    
    func fullSettingFromNib() -> UIView {
        let bundle = Bundle.init(for: type(of: self))
        let nib = UINib(nibName: "FullSetting", bundle: bundle)
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
    
}
