//
//  InfoViewController.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/17/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var tabBarView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarViewSetting()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    
    @IBAction func mainVCButton(_ sender: Any) {
         self.navigationController?.popToRootViewController(animated: false)
    }
    
    func tabBarViewSetting(){
          tabBarView.layer.shadowColor = UIColor.lightGray.cgColor
                 tabBarView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
                 tabBarView.layer.shadowRadius = 8.0
                 tabBarView.layer.cornerRadius = 25.0
                 tabBarView.layer.shadowOpacity = 0.5
                 tabBarView.layer.masksToBounds = false
                 tabBarView.layer.backgroundColor = UIColor.white.cgColor
      }
      
}
