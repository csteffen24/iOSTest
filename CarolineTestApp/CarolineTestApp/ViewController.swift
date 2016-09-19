//
//  ViewController.swift
//  CarolineTestApp
//
//  Created by Caroline Steffen on 9/19/16.
//  Copyright © 2016 Caroline Steffen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor .blue
        
        setupImage()
        setupButton()
    }
    
    func setupImage() {
        let appImage = UIImage.init(named: "coding.jpg") ?? UIImage.init()
        let appImageView:UIImageView = UIImageView.init(image: appImage)
        
        let imageWidth:CGFloat = 200
        let scaleFactor:CGFloat = appImage.size.width != 0 ? imageWidth/appImage.size.width : CGFloat(1)
        
        appImageView.frame = CGRect(x: 0, y:20, width: imageWidth, height: appImage.size.height * scaleFactor)
        appImageView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(appImageView)
        
        view.addConstraint(NSLayoutConstraint(item: appImageView, attribute: NSLayoutAttribute .top, relatedBy: NSLayoutRelation .equal, toItem: view, attribute: NSLayoutAttribute .top, multiplier: 1.0, constant: 20.0))
        view.addConstraint(NSLayoutConstraint(item: appImageView, attribute: NSLayoutAttribute .centerX, relatedBy: NSLayoutRelation .equal, toItem: view, attribute: NSLayoutAttribute .centerX, multiplier: 1.0, constant: 0.0))
    }
    
    func setupButton() {
        let appButton = UIButton.init(frame:CGRect(x:200, y:300, width: 150, height: 44))
        appButton.backgroundColor = UIColor .white
        appButton.setTitleColor(UIColor .blue, for: UIControlState .normal)
        
        appButton.setTitle("Click Me!", for: UIControlState .normal)
        appButton.addTarget(self, action: #selector(self.buttonClicked), for: UIControlEvents .touchUpInside)
        appButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(appButton)
        
        view.addConstraint(NSLayoutConstraint(item: appButton, attribute: NSLayoutAttribute .bottom, relatedBy: NSLayoutRelation .equal, toItem: view, attribute: NSLayoutAttribute .bottom, multiplier: 1.0, constant: -20.0))
        view.addConstraint(NSLayoutConstraint(item: appButton, attribute: NSLayoutAttribute .centerX, relatedBy: NSLayoutRelation .equal, toItem: view, attribute: NSLayoutAttribute .centerX, multiplier: 1.0, constant: 0.0))
    }
    
    func buttonClicked() {
        let char = Character.init("c")
        let dict: Dictionary = ["cherry":"34" , "red":"23", "coral":"19", "green":"12","celeste":"-10","gold":"-3"]
        
        let alert = UIAlertController(title: "You win!", message: "The answer is: \n\(findWordsWithLetter(char: char, dict: dict))", preferredStyle: UIAlertControllerStyle .alert)
        alert.addAction(UIAlertAction(title: "Hooray!", style: UIAlertActionStyle .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func findWordsWithLetter(char:Character, dict:Dictionary<String, String>) -> [String] {
        var wordsWithLetter: [String] = []
        
        for (k,_) in dict {
            if k.characters.first == char {
                wordsWithLetter.append(k)
            }
        }
        
        return wordsWithLetter
    }
}
