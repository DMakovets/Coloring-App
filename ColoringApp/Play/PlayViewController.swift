//
//  PlayViewController.swift
//  ColoringApp
//
//  Created by Denis Makovets on 5/19/20.
//  Copyright © 2020 Denis Makovets. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {
    
    @IBOutlet weak var canvas: DrawView!
    @IBOutlet weak var mainImageVIew: UIImageView!
    @IBOutlet weak var playCollectionVIew: UICollectionView!
    @IBOutlet weak var viewForColor: UIView!
    @IBOutlet weak var newView: ScoreView!
    
    var massColor: [UIColor] = [#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1),#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1),#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1),#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1),#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1),#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1),#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1),#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1),#colorLiteral(red: 1, green: 0.4, blue: 0.4, alpha: 1),#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1),#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1),#colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1),#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1),#colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1),#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1),#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1),#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1),#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)]
    var imageGame: UIImage?
    var quantityColor: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newView.scoreLabel.text = formatPoints(num: Int(quantityColor)!)
        mainImageVIew.image = imageGame!
        playCollectionVIew.delegate = self
        playCollectionVIew.dataSource = self
        viewForColorSetting()
        canvas.backgroundColor = UIColor.black.withAlphaComponent(0)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
        allNotification()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
}

extension PlayViewController {
    
    func viewForColorSetting(){
        viewForColor.layer.shadowColor = UIColor.lightGray.cgColor
               viewForColor.layer.shadowOffset = CGSize(width: 0, height: 2.0)
               viewForColor.layer.shadowRadius = 8.0
               viewForColor.layer.cornerRadius = 25.0
               viewForColor.layer.shadowOpacity = 0.5
               viewForColor.layer.masksToBounds = false
               viewForColor.layer.backgroundColor = UIColor.white.cgColor
    }
    
    func allNotification(){
        NotificationCenter.default.addObserver(self, selector: #selector(startPresentationInfo), name: NSNotification.Name(rawValue: "info"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(pushToPriceVC), name: NSNotification.Name(rawValue: "price"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(goToMainVC), name: NSNotification.Name(rawValue: "playVCtoMainVC"), object: nil)
    }
    
    @objc func startPresentationInfo(){
        let userDefaults = UserDefaults.standard
        let presentationWasViewed = userDefaults.bool(forKey: "presentationWasViewed")
        if presentationWasViewed ==  false {
        let storyboard = UIStoryboard(name: "Training", bundle: nil)
        if let pageViewController = storyboard.instantiateViewController(withIdentifier: "TrainingPageVC") as? TrainingPageVC {
            pageViewController.modalPresentationStyle = .overCurrentContext
            present(pageViewController, animated: true, completion: nil)
            }
        }
    }
    
    @objc func startPresentation(){
        let userDefaults = UserDefaults.standard
        let presentationWasViewed = userDefaults.bool(forKey: "presentationWasViewed")
        let storyboard = UIStoryboard(name: "Training", bundle: nil)
        if let pageViewController = storyboard.instantiateViewController(withIdentifier: "TrainingPageVC") as? TrainingPageVC {
            pageViewController.modalPresentationStyle = .overCurrentContext
            present(pageViewController, animated: true, completion: nil)
        }
    }
    
    @objc func goToMainVC(){
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func pushToPriceVC(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "BuyViewController") as! BuyViewController
        self.present(vc, animated: true, completion: nil)
    }
    
    func formatPoints(num: Int) -> String {
        let newNum = String(num / 1000)
        var newNumString = "\(num)"
        if num > 1000 {
            newNumString = "\(newNum)K"
        }
        return newNumString
    }
    
}

extension PlayViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return massColor.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        if let view = cell.viewWithTag(111) {
            view.backgroundColor = massColor[indexPath.row]
            view.layer.cornerRadius = 12.5
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let color = massColor[indexPath.row]
        canvas.drawColor = color
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
           CGSize(width: 25, height: 25)
       }
    
}

extension Int {
    
    var roundedWithAbbreviations: String {
        let number = Double(self)
        let thousand = number / 1000
        let million = number / 1000000
        if million >= 1.0 {
            return "\(round(million*10)/10)M"
        }
        else if thousand >= 1.0 {
            return "\(round(thousand*10)/10)K"
        }
        else {
            return "\(self)"
        }
    }
}
