//
//  SupportView.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/18/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class SupportView: UIView {

    
          required init?(coder aDecoder: NSCoder) {
              super.init(coder: aDecoder)
              loadViewFromNib()
              
          }
          
          func loadViewFromNib() -> UIView {
              let bundle = Bundle.init(for: type(of: self))
              let nib = UINib(nibName: "Support", bundle: bundle)
              let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
              frame = bounds
              autoresizingMask = [ .flexibleWidth, .flexibleHeight]
              addSubview(view)
            
            view.layer.shadowColor = UIColor.lightGray.cgColor
            view.layer.shadowOffset = CGSize(width: 0, height: 2.0)
            view.layer.shadowRadius = 8.0
            view.layer.cornerRadius = 10.0
            view.layer.shadowOpacity = 0.5
            view.layer.masksToBounds = false
            view.layer.backgroundColor = UIColor.white.cgColor
              return view
              
          }
}
