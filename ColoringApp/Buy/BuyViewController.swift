//
//  BuyViewController.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/19/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class BuyViewController: UIViewController {

    @IBOutlet weak var superView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        superViewLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
        notificationCenter()
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    func superViewLoad(){
        superView.layer.shadowColor = UIColor.lightGray.cgColor
        superView.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        superView.layer.shadowRadius = 8.0
        superView.layer.cornerRadius = 20
        superView.layer.shadowOpacity = 0.3
        superView.layer.masksToBounds = false
        superView.layer.backgroundColor = UIColor.white.cgColor
    }
    
    func notificationCenter(){
        NotificationCenter.default.addObserver(self, selector: #selector(playVideo), name: NSNotification.Name(rawValue: "video"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(pushToPlayVC), name: NSNotification.Name(rawValue: "backBuy"), object: nil)
    }
    
   @objc func pushToPlayVC(){
         self.dismiss(animated: true, completion: nil)
   }
    
   @objc func playVideo() {
        guard let path = Bundle.main.path(forResource: "video", ofType:"mp4") else {
            debugPrint("video.m4v not found")
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
           player.play()
        }
    }
}
