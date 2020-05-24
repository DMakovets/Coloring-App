//
//  MagicSearchView.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/19/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class MagicSearchView: UIView {
    
    @IBOutlet weak var magicSearch: UIButton!
    @IBOutlet weak var magicSearchPrice: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        scoreFromNib()
        magicSearchLoad()
        magicSearchPriceLoad()
        
    }
    
    func scoreFromNib() -> UIView {
        let bundle = Bundle.init(for: type(of: self))
        let nib = UINib(nibName: "MagicSearch", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        frame = bounds
        autoresizingMask = [ .flexibleWidth, .flexibleHeight]
        addSubview(view)
        return view
        
    }
    
    func magicSearchLoad(){
        magicSearch.layer.shadowColor = UIColor.lightGray.cgColor
        magicSearch.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        magicSearch.layer.shadowRadius = 8.0
        magicSearch.layer.cornerRadius = 25
        magicSearch.layer.shadowOpacity = 0.5
        magicSearch.layer.masksToBounds = false
        magicSearch.layer.backgroundColor = UIColor.white.cgColor
    }
    
    func magicSearchPriceLoad(){
        magicSearchPrice.layer.shadowColor = UIColor.lightGray.cgColor
        magicSearchPrice.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        magicSearchPrice.layer.shadowRadius = 8.0
        magicSearchPrice.layer.cornerRadius = 9
        magicSearchPrice.layer.shadowOpacity = 0.5
        magicSearchPrice.layer.masksToBounds = true
    }
}
