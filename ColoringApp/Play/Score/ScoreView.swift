//
//  ScoreView.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/19/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class ScoreView: UIView {

    
    @IBOutlet weak var scoreItem: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var scoreView: UIView!
    
    override init(frame: CGRect){
        super.init(frame: frame)
        scoreFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        scoreFromNib()
    }
    
    func scoreFromNib() -> UIView {
        Bundle.main.loadNibNamed("Score", owner: self, options: nil)
        addSubview(scoreView)
        scoreView.frame = self.bounds
        autoresizingMask = [ .flexibleWidth, .flexibleHeight]
        
        scoreView.layer.shadowColor = UIColor.lightGray.cgColor
        scoreView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        scoreView.layer.shadowRadius = 8.0
        scoreView.layer.cornerRadius = 25.0
        scoreView.layer.shadowOpacity = 0.5
        scoreView.layer.masksToBounds = false
        scoreView.layer.backgroundColor = UIColor.white.cgColor
        return scoreView

    }
    @IBAction func moreColorButton(_ sender: Any) {
         NotificationCenter.default.post(name: NSNotification.Name(rawValue: "price"), object: nil)
    }
    
}
