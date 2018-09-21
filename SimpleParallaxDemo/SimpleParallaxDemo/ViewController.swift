//
//  ViewController.swift
//  SimpleParallaxDemo
//
//  Created by Julian Praest on 9/21/18.
//  Copyright © 2018 com.joolean.SimpleParallaxDemo. All rights reserved.
//

import UIKit

enum DemoType {
    case Desk
    case Mountain
}

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var background1: UIImageView!
    @IBOutlet weak var background2: UIImageView!
    
    var currentDemo = DemoType.Desk
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.backgroundColor = .clear
        startButton.layer.cornerRadius = 0
        startButton.layer.borderWidth = 2
        startButton.layer.borderColor = UIColor.black.cgColor
        
        //Lets assign our Backgrounds:
        background2.addBackgroundPxEffect(strength: .Low)
        background1.addBackgroundPxEffect(strength: .Mid)
        
        //Lets assign our Middleground:
        titleLabel.addMiddlegroundPxEffect()
        
        //Lets assign our Foreground:
        startButton.addForegroundPxEffect(strength: .High)
    }

    //Hides status bar for aesthetic demo reasons
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        switch currentDemo {
        case .Desk:
            currentDemo = .Mountain
            startButton.layer.borderColor = UIColor.white.cgColor
            startButton.setTitleColor(.white, for: .normal)
            titleLabel.text = "Composed of Background, Middleground & Foreground."
            background2.image = UIImage(named: "bg2Demo2")
            background1.image = UIImage(named: "bg1Demo2")
            break
        default:
            currentDemo = .Desk
            startButton.layer.borderColor = UIColor.black.cgColor
            startButton.setTitleColor(.black, for: .normal)
            titleLabel.text = "This is simple Parallax."
            background2.image = UIImage(named: "bg2Demo")
            background1.image = UIImage(named: "bg1Demo")
            break
        }
    }
    
}

